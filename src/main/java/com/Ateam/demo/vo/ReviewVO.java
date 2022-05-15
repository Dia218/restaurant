package com.Ateam.demo.vo;
import lombok.Data;

@Data
public class ReviewVO {
    private int reviewNo;
    private String userId;
    private String reviewTitle;
    private String reviewText;

    public int getReviewNo(){return reviewNo;}
    public void setReviewNo(int reviewNo){
        this.reviewNo = reviewNo;
    }
    public String getUserId(){return userId;}
    public void setUserId(String userId){
        this.userId = userId;
    }
    public String getReviewTitle(){return reviewTitle;}
    public void setReviewTitle(String reviewTitle){
        this.reviewTitle = reviewTitle;
    }
    public String getReviewText(){return reviewText;}
    public void setReviewText(String reviewText){
        this.reviewText = reviewText;
    }
}
