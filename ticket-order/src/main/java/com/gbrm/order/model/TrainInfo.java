package com.gbrm.order.model;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class TrainInfo {
    private String trainNumber;

    private String fromCity;

    private String toCity;

    private String fromTime;

    private String toTime;

    private String totalTime;

    private Integer noseatNum;

    private BigDecimal noseatPrice;

    private Integer hardseatNum;

    private BigDecimal hardseatPrice;

    private Integer hardsleeperNum;

    private BigDecimal hardsleeperPrice;

    private Integer softsleeperNum;

    private BigDecimal softsleeperPrice;

}