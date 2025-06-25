package com.example.springboot.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.springboot.entity.User;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  服务类
 * </p>
 *
 */
public interface UserService extends IService<User> {

    IPage pageC(IPage<User> page);


    IPage pageCC(IPage<User> page, @Param(Constants.WRAPPER) Wrapper wrapper);
}
