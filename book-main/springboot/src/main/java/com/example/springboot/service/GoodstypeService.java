package com.example.springboot.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.springboot.entity.Goodstype;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  服务类
 * </p>
 *
 * 书籍分类管理
 */
public interface GoodstypeService extends IService<Goodstype> {

    IPage pageCC(IPage<Goodstype> page, @Param(Constants.WRAPPER) Wrapper wrapper);
}
