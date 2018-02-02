package com.hegx.service.impl;

import com.hegx.dao.FashionDao;
import com.hegx.dto.FashionDto;
import com.hegx.po.Fashion;
import com.hegx.service.FashionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FashionServiceImpl implements FashionService {

    @Autowired
    FashionDao fashionDao;

    @Override
    public List<Fashion> getAll() {
        return fashionDao.getAll();
    }

    @Override
    public void insert(FashionDto fashionDto) {
        fashionDao.insert(fashionDto);
    }

    @Override
    public void update(FashionDto fashionDto) {
        fashionDao.update(fashionDto);
    }

    @Override
    public void deleteById(Integer id) {
        fashionDao.deleteById(id);
    }

    @Override
    public FashionDto getById(Integer id) {
        return fashionDao.getById(id);
    }

    @Override
    public FashionDto getByFashionName(FashionDto fashionDto) {
        return fashionDao.getByFashionName(fashionDto);
    }
}
