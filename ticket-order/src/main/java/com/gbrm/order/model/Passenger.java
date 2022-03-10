package com.gbrm.order.model;

import lombok.Data;

@Data
public class Passenger {
    private Long id;

    private String loginName;

    private String password;

    private String reserverName;

    private String phoneNumber;

    private String address;

    private String passengerType;

}