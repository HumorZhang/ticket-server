package com.gbrm.order.dao;

import com.gbrm.order.model.Area;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AreaMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Area record);

    int insertSelective(Area record);

    Area selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Area record);

    int updateByPrimaryKey(Area record);
}