package com.chen.ems.security.login;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.ProviderNotFoundException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

import java.util.Objects;

/**
 * @Author: CHENLIHUI
 * @Description: 微信小程序自定义处理器
 * @Date: Create in 17:32 2020/8/30
 */
@Component
public class MiniProgramAuthenticationManager implements AuthenticationManager {

    private final MiniProgramAuthenticationProvider miniAuthenticationProvider;

    public MiniProgramAuthenticationManager(MiniProgramAuthenticationProvider miniAuthenticationProvider) {
        this.miniAuthenticationProvider = miniAuthenticationProvider;
    }

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        Authentication result = miniAuthenticationProvider.authenticate(authentication);
        if (Objects.nonNull(result)) {
            return result;
        }
        throw new ProviderNotFoundException("Authentication failed!");
    }
}
