package com.example.springboot.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.springboot.entity.Record;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  服务类
 * </p>
 *
 * 记录管理
 */
public interface RecordService extends IService<Record> {

    IPage pageCC(IPage<Record> page,@Param(Constants.WRAPPER) Wrapper wrapper);
}
