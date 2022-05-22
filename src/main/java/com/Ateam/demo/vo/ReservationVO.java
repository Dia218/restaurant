package com.Ateam.demo.vo;

import lombok.Data;

@Data
public class ReservationVO {
    private int reservationNo;
    private String userId;
    private int tableNo;
    private int tableSits;
    private String reservationDate;
    private String reservationTime;


    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }
    public int getTableNo() {
        return tableNo;
    }
    public void setTableNo(int tableNo) {
        this.tableNo = tableNo;
    }
    public int getTableSits() {
        return tableSits;
    }
    public void setTableSits(int tableSits) {
        this.tableSits = tableSits;
    }

}