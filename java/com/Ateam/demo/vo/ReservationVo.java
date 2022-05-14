package com.Ateam.demo.vo;

import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.sql.Date;

@Data
@RequiredArgsConstructor
public class ReservationVo {
    private int reservationNo;
    private String userId;
    private int tableNo;
    private int tableSits;
    private Date reservationDate;
    private String reservationTime;
    //private Time reservationTime //데이터형 문자형으로 받아서 시간으로 저장됨

    public String getUserId(){
        return userId;
    }
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

}

