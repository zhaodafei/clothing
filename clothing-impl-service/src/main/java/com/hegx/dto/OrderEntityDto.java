package com.hegx.dto;

import com.hegx.po.OrderEntity;

public class OrderEntityDto extends OrderEntity {

    private String showStatus;
    private String message;

    public OrderEntityDto() {
    }

    public OrderEntityDto(String message) {
        this.message = message;
    }

    public String getShowStatus() {
        return showStatus;
    }

    public void setShowStatus(String showStatus) {
        this.showStatus = showStatus;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
