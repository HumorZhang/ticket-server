package com.gbrm.order.dao;

import com.gbrm.order.model.TrainInfo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TrainInfoMapper {
    int insert(TrainInfo record);

    int insertSelective(TrainInfo record);
}