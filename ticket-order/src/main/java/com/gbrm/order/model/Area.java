package com.gbrm.order.model;

import lombok.Data;

/*
城市信息
 */
@Data
public class Area {
    private Integer id;
    private Integer cityCode;
    private String  cityName;
}