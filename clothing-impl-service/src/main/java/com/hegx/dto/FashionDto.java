package com.hegx.dto;

import com.hegx.po.Fashion;

public class FashionDto extends Fashion {

    private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
