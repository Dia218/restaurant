package com.Ateam.demo.mapper;


import com.Ateam.demo.vo.ReviewVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReviewMapper {
    public void enrollReview(ReviewVO review);

    List<ReviewVO> findAll();
}
