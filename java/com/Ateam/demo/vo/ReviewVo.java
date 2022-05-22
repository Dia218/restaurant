package com.Ateam.demo.vo;

import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.sql.Date;

@Data
@RequiredArgsConstructor
public class ReviewVo {
    private int reviewNo;
    private String userId;
    private String reviewTitle;
    private String reviewText;
    private double reviewPoint;
    private Date reviewDate;

    public int getReviewNo(){return reviewNo;}

    public String getUserId(){return userId;}

    public String getReviewTitle(){return reviewTitle;}

    public String getReviewText(){return reviewText;}

    public double getReviewPoint(){return reviewPoint;}

}
