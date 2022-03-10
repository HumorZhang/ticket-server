package com.gbrm.order.model;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class GdInfo {
    private String trainNumber;

    private String fromCity;

    private String toCity;

    private String fromTime;

    private String toTime;

    private String totalTime;

    private Integer secondseatNum;

    private BigDecimal secondseatPrice;

    private Integer firstseatNum;

    private BigDecimal firstseatPrice;

    private Integer businessNum;

    private BigDecimal businessPrice;

}