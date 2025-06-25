package com.example.springboot.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.springboot.entity.Goods;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  服务类
 * </p>
 *
 *
 * 物品管理
 */
public interface GoodsService extends IService<Goods> {

    IPage pageCC(IPage<Goods> page, @Param(Constants.WRAPPER) Wrapper wrapper);
}
