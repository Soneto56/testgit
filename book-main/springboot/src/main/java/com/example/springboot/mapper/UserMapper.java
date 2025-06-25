package com.example.springboot.mapper;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.example.springboot.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  Mapper 接口
 * </p>
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {

    //分页第一种方法
    IPage pageC(IPage<User> page);

    //分页第二种方法
    IPage pageCC(IPage<User> page, @Param(Constants.WRAPPER) Wrapper wrapper);
}
