package com.hegx.service;

import com.hegx.base.service.BaseService;
import com.hegx.po.Code;

public interface CodeService extends BaseService<Code> {

    /**
     * 计算总数
     */
    public Integer doTotalcount(Code code);
}
