package com.Ateam.demo.service;

import com.Ateam.demo.vo.ReviewVo;
import com.Ateam.demo.vo.UserVo;

import java.util.List;

public interface ReviewService {
    public void enroll(ReviewVo review, UserVo user);

    public List<ReviewVo> findAll();
}
