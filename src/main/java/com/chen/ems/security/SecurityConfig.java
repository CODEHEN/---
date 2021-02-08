package com.chen.ems.security;

import com.chen.ems.security.bo.MyProperties;
import com.chen.ems.security.filter.AdminAuthenticationProcessingFilter;
import com.chen.ems.security.filter.MiniProgramAuthenticationFilter;
import com.chen.ems.security.filter.MyAuthenticationFilter;
import com.chen.ems.security.login.*;
import com.chen.ems.security.url.UrlAccessDecisionManager;
import com.chen.ems.security.url.UrlAccessDeniedHandler;
import com.chen.ems.security.url.UrlFilterInvocationSecurityMetadataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.ObjectPostProcessor;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.configurers.ExpressionUrlAuthorizationConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 16:24 2020/8/9
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    MyProperties myProperties;

    @Autowired
    private CusAuthenticationManager authenticationManager;

    @Autowired
    private AdminAuthenticationSuccessHandler adminAuthenticationSuccessHandler;

    @Autowired
    private AdminAuthenticationFailureHandler adminAuthenticationFailureHandler;

    @Autowired
    private MiniProgramAuthenticationManager miniProgramAuthenticationManager;

    @Autowired
    private MiniAuthenticationSuccessHandler miniAuthenticationSuccessHandler;

    @Autowired
    private MiniAuthenticationFailureHandler miniAuthenticationFailureHandler;

    /**
     * 访问鉴权 - 认证token、签名...
     */
    private MyAuthenticationFilter myAuthenticationFilter;

    /**
     * 访问权限认证异常处理,未登录认证异常
     */
    private AdminAuthenticationEntryPoint adminAuthenticationEntryPoint;

    /**
     * 自定义访问无权限接口时403响应内容
     */
    private UrlAccessDeniedHandler urlAccessDeniedHandler;

    /**
     * 用户密码校验过滤器
     */
//    private AdminAuthenticationProcessingFilter adminAuthenticationProcessingFilter;

    @Autowired
    private  MiniProgramAuthenticationProvider miniProgramAuthenticationProvider;

    @Autowired
    private  AdminAuthenticationProvider adminAuthenticationProvider;

    /**
     * 获取访问url所需要的角色信息
     */
    private UrlFilterInvocationSecurityMetadataSource urlFilterInvocationSecurityMetadataSource;

    /**
     * 认证权限处理 - 将上面所获得角色权限与当前登录用户的角色做对比，如果包含其中一个角色即可正常访问
     */
    private UrlAccessDecisionManager urlAccessDecisionManager;

    public SecurityConfig(MyAuthenticationFilter myAuthenticationFilter, AdminAuthenticationEntryPoint adminAuthenticationEntryPoint, UrlAccessDeniedHandler urlAccessDeniedHandler, UrlFilterInvocationSecurityMetadataSource urlFilterInvocationSecurityMetadataSource, UrlAccessDecisionManager urlAccessDecisionManager) {
        this.myAuthenticationFilter = myAuthenticationFilter;
        this.adminAuthenticationEntryPoint = adminAuthenticationEntryPoint;
        this.urlAccessDeniedHandler = urlAccessDeniedHandler;
        this.urlFilterInvocationSecurityMetadataSource = urlFilterInvocationSecurityMetadataSource;
        this.urlAccessDecisionManager = urlAccessDecisionManager;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(miniProgramAuthenticationProvider);
        auth.authenticationProvider(adminAuthenticationProvider);
    }

    @Override
    @Bean
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    /**
     * 权限配置
     * @param http
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        ExpressionUrlAuthorizationConfigurer<HttpSecurity>.ExpressionInterceptUrlRegistry registry = http.antMatcher("/**").authorizeRequests();

        // 禁用CSRF 开启跨域
        http.csrf().disable().cors();

        // 未登录认证异常
        http.exceptionHandling().authenticationEntryPoint(adminAuthenticationEntryPoint);

        // 登录过后访问无权限的接口时自定义403响应内容
        http.exceptionHandling().accessDeniedHandler(urlAccessDeniedHandler);

        // url权限认证处理
        registry.withObjectPostProcessor(new ObjectPostProcessor<FilterSecurityInterceptor>() {
            @Override
            public <O extends FilterSecurityInterceptor> O postProcess(O o) {
                o.setSecurityMetadataSource(urlFilterInvocationSecurityMetadataSource);
                o.setAccessDecisionManager(urlAccessDecisionManager);
                return o;
            }
        });

        // 不创建会话 - 即通过前端传token到后台过滤器中验证是否存在访问权限
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

        // 允许匿名的url - 可理解为放行接口 - 除配置文件忽略url以外，其它所有请求都需经过认证和授权
        for (String url : myProperties.getAuth().getIgnoreUrls()) {
            registry.antMatchers(url).permitAll();
        }

        // OPTIONS(选项)：查找适用于一个特定网址资源的通讯选择。 在不需执行具体的涉及数据传输的动作情况下， 允许客户端来确定与资源相关的选项以及 / 或者要求， 或是一个服务器的性能
        registry.antMatchers(HttpMethod.OPTIONS, "/**").denyAll();

        // 自定义过滤器在登录时认证用户名、密码
//        http.addFilterAt(adminAuthenticationProcessingFilter, UsernamePasswordAuthenticationFilter.class)
//                .addFilterBefore(myAuthenticationFilter, BasicAuthenticationFilter.class);

        // 自动登录 - cookie储存方式
        registry.and().rememberMe();

        // 其余所有请求都需要认证
        registry.anyRequest().authenticated();

        // 防止iframe 造成跨域
        registry.and().headers().frameOptions().disable();


    }

    @Bean
    public AdminAuthenticationProcessingFilter adminAuthenticationProcessingFilter(){
        AdminAuthenticationProcessingFilter filter = new AdminAuthenticationProcessingFilter();
        filter.setAuthenticationManager(authenticationManager);
        filter.setAuthenticationFailureHandler(adminAuthenticationFailureHandler);
        filter.setAuthenticationSuccessHandler(adminAuthenticationSuccessHandler);
        return filter;
    }

    @Bean
    public MiniProgramAuthenticationFilter miniProgramAuthenticationFilter(){
        MiniProgramAuthenticationFilter filter = new MiniProgramAuthenticationFilter();
        filter.setAuthenticationManager(miniProgramAuthenticationManager);
        filter.setAuthenticationSuccessHandler(miniAuthenticationSuccessHandler);
        filter.setAuthenticationFailureHandler(miniAuthenticationFailureHandler);
        return filter;
    }
    
    /**
     * @Description:  忽略拦截url或静态资源文件夹 - web.ignoring(): 会直接过滤该url - 将不会经过Spring Security过滤器链
     *                                      http.permitAll(): 不会绕开springsecurity验证，相当于是允许该路径通过
     * @Param: [web]a
     * @return: void
     */
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers(HttpMethod.GET,
                "/favicon.ico",
                "/**/*.png",
                "/**/*.ttf",
                "/*.html",
                "/**/*.css",
                "/**/*.js");
    }
}
