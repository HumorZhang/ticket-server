package com.gbrm.order.dao;

import com.gbrm.order.model.Passenger;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PassengerMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Passenger record);

    int insertSelective(Passenger record);

    Passenger selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Passenger record);

    int updateByPrimaryKey(Passenger record);
}