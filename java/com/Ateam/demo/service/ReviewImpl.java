package com.Ateam.demo.service;

import com.Ateam.demo.mapper.ReviewMapper;
import com.Ateam.demo.vo.ReviewVo;
import com.Ateam.demo.vo.UserVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReviewImpl implements ReviewService {

    //@Autowired
    //private ReviewMapper reviewMapper;
    private final ReviewMapper reviewMapper;


    @Override
    public void enroll(ReviewVo review, UserVo user) {
        review.setUserId(user.getUserId());
        reviewMapper.enrollReview(review);
    }

    @Override
    public List<ReviewVo> findAll(){

        return reviewMapper.findAll();
    }
}
