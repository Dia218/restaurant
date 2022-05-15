package com.Ateam.demo.service;

import com.Ateam.demo.vo.ReviewVO;
import com.Ateam.demo.vo.UserVo;

import java.util.List;


public interface ReviewService {
    public void enroll(ReviewVO review, UserVo user);

    public List<ReviewVO> findAll();
}