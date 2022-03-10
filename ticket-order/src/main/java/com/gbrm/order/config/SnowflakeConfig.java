package com.gbrm.order.config;

import com.gbrm.order.common.Snowflake;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 雪花算法订单号生成
 */
@Configuration
public class SnowflakeConfig {

    @Value("${application.datacenterId}")
    private Long datacenterId;

    @Value("${application.workerId}")
    private Long workerId;

    @Bean
    public Snowflake snowflake() {
        return new Snowflake(workerId, datacenterId);
    }

}
