package com.gbrm.order.service.impl;

import com.gbrm.order.common.Snowflake;
import com.gbrm.order.dao.PassengerMapper;
import com.gbrm.order.model.Passenger;
import com.gbrm.order.service.PassengerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PassengerServiceImpl implements PassengerService {
    @Autowired
    PassengerMapper passengerMapper;

    @Autowired
    Snowflake snowflake;

    @Override
    public int addPassenger(Passenger passenger) {
        try {
            long snowflakeID = snowflake.nextValue();
            passenger.setId(snowflakeID);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return passengerMapper.insert(passenger);
    }
}
