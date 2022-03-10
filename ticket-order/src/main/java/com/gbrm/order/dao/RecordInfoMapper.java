package com.gbrm.order.dao;

import com.gbrm.order.model.RecordInfo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RecordInfoMapper {
    int insert(RecordInfo record);

    int insertSelective(RecordInfo record);
}