package com.Ateam.demo.vo;

import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.sql.Date;

@Data
@RequiredArgsConstructor
public class ReservationVo {
    private Integer reservationNo;
    private String userId;
    private String userName;
    private String userPhone;
    private int tableNo;
    private int tableSits;
    private String reservationDate;
    private String reservationTime;

    public String getUserId(){
        return userId;
    }
    public String getUserName(){return userName;}
    public String getUserPhone(){return userPhone;}
    public void setUserId(String userId){
        this.userId=userId;
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


    public void setUserName(String userName){
        this.userName = userName;
    }

    public void setUserPhone(String userPhone){
        this.userPhone = userPhone;
    }
}

