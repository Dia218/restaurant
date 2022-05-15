package com.Ateam.demo.service;

import com.Ateam.demo.mapper.ReviewMapper;
import com.Ateam.demo.vo.ReviewVO;
import com.Ateam.demo.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewServiceImpl implements ReviewService {
        @Autowired
        private ReviewMapper Remapper;

        @Override
        public void enroll(ReviewVO review, UserVo user) {
            review.setUserId(user.getUserId());
            Remapper.enrollReview(review);
        }

        @Override
        public List<ReviewVO> findAll(){

            return Remapper.findAll();
        }
}
