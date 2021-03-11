package com.chen.ems;

import com.chen.ems.security.bo.MyProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

/**
 * @author CHENLH
 */
@SpringBootApplication
@EnableConfigurationProperties({MyProperties.class})
public class EmsApplication {

    public static void main(String[] args) {
        SpringApplication.run(EmsApplication.class, args);
    }

}
