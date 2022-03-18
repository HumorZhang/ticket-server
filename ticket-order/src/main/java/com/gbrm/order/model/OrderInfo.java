package com.gbrm.order.model;

import lombok.Data;

import java.math.BigInteger;

/*
订单信息
 */
@Data
public class OrderInfo {
    private BigInteger id;
    private BigInteger ticketId;
    private BigInteger passengerId;
    private String buyTime;
    private Integer count;
}
