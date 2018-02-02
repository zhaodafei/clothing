package com.hegx.service.impl;

import com.hegx.base.dao.BaseDao;
import com.hegx.base.service.impl.BaseServiceImpl;
import com.hegx.dao.DeliveryDao;
import com.hegx.po.Delivery;
import com.hegx.service.DeliveryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DeliveryServiceImpl extends BaseServiceImpl<Delivery> implements DeliveryService{

    @Autowired
    private DeliveryDao deliveryDao;

    @Override
    protected BaseDao<Delivery> getBaseDao() {
        return this.deliveryDao;
    }
}
