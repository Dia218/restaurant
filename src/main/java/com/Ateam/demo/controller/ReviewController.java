package com.Ateam.demo.controller;

import com.Ateam.demo.service.ReviewServiceImpl;
import com.Ateam.demo.vo.ReviewVO;
import com.Ateam.demo.vo.UserVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class ReviewController {

    @Autowired
    private ReviewServiceImpl Reservice;

    @GetMapping("/reviewPage")
    public String GetReviewPage(){
        return "postReview";
    }

    @PostMapping({"/postReview"})
    public void enroll(ReviewVO review, Authentication authentication) {
        UserVo user = (UserVo)authentication.getPrincipal();
        Reservice.enroll(review,user);
    }

    @GetMapping ({"/checkReview"})
    public void check(ReviewVO review, Model model) {
        List<ReviewVO> tables = new ArrayList<>();

        tables.addAll(Reservice.findAll());

        model.addAttribute("tableList", tables);
    }
}
