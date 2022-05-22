package com.Ateam.demo.mapper;

import com.Ateam.demo.vo.ReviewVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReviewMapper {

    public void enrollReview(ReviewVo review);

    List<ReviewVo> findAll();
}
