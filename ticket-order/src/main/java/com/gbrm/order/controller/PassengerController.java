package com.gbrm.order.controller;

import com.gbrm.order.model.Passenger;
import com.gbrm.order.service.PassengerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PassengerController {
    @Autowired
    PassengerService passengerService;

    @PostMapping("/addPassenger")
    public String addPassenger(@RequestBody Passenger passenger){
        System.out.println(passenger);
        if(passengerService.addPassenger(passenger)>0){
            return "插入成功";
        } else return "插入失败";
    }

}
