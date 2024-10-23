package com.qny.csdw;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.qny.csdw"})
//@MapperScan({"com.XZY.mallchat.common.**.mapper","com.XZY.mallchat.common.user.config"})
public class CdwApplication {
    public static void main(String[] args) {
        SpringApplication.run(CdwApplication.class);
    }
}
