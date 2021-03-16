package com.chen.ems.security.filter;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.chen.ems.common.exception.MyException;
import com.chen.ems.core.pojo.User;
import com.chen.ems.miniProgram.utils.WechatUtil;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 15:09 2020/8/30
 */
public class MiniProgramAuthenticationFilter extends AbstractAuthenticationProcessingFilter {

    public MiniProgramAuthenticationFilter() {
        super(new AntPathRequestMatcher("/wx/login", "POST"));
    }

    @Override
    public Authentication attemptAuthentication(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws AuthenticationException, IOException, ServletException {

        StringBuffer sb = new StringBuffer();
        String line;
        try {
            BufferedReader reader = httpServletRequest.getReader();
            while ((line = reader.readLine()) != null){
                sb.append(line);
            }
        } catch (Exception e) {
            throw new MyException("字符流转换异常");
        }

        JSONObject jsonObject = (JSONObject) JSONObject.parse(sb.toString());

        JSONObject rawDataJson = JSON.parseObject(jsonObject.getString("rawData"));

        JSONObject sessionKeyOpenId = WechatUtil.getSessionKeyOrOpenId(jsonObject.getString("code"));

        // 3.接收微信接口服务 获取返回的参数
        String openid = sessionKeyOpenId.getString("openid");
        String sessionKey = sessionKeyOpenId.getString("session_key");
        // 4.校验签名 小程序发送的签名signature与服务器端生成的签名signature2 = sha1(rawData + sessionKey)
        String signature2 = DigestUtils.sha1Hex(jsonObject.getString("rawData") + sessionKey);
        if (!jsonObject.getString("signature").equals(signature2)) {
           throw new MyException("小程序签名校验失败");
        }

        User user = JSONObject.parseObject(String.valueOf(rawDataJson), User.class);

        WxLoginAuthenticationToken authRequest = new WxLoginAuthenticationToken(user, openid, null);
//        authRequest.setDetails(authenticationDetailsSource.buildDetails());
        return this.getAuthenticationManager().authenticate(authRequest);
    }
}
