package com.example.springboot.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.springboot.entity.Storage;
import com.example.springboot.mapper.StorageMapper;
import com.example.springboot.service.StorageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * <p>
 *  服务实现类
 * </p>
 * 书架管理
 */
@Service
public class StorageServiceImpl extends ServiceImpl<StorageMapper, Storage> implements StorageService {

    @Resource
    private StorageMapper storageMapper;
    @Override
    public IPage pageCC(IPage<Storage> page, Wrapper wrapper) {
        return storageMapper.pageCC(page,wrapper);
    }
}
