package com.gbrm.order.dao;

import com.gbrm.order.model.GdInfo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GdInfoMapper {
    int insert(GdInfo record);

    int insertSelective(GdInfo record);
}