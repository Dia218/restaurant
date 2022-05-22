package com.Ateam.demo.controller;

import com.Ateam.demo.service.ReviewImpl;
import com.Ateam.demo.vo.ReviewVo;
import com.Ateam.demo.vo.UserVo;
import lombok.RequiredArgsConstructor;
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

    private final ReviewImpl reviewService;

    @GetMapping("/reviewBoard")
    public void GetReviewPage(ReviewVo review, Model model){
        List<ReviewVo> tables = new ArrayList<>();

        tables.addAll(reviewService.findAll());

        model.addAttribute("tableList", tables);
    }

    @GetMapping("/reviewWrite")
    public void MakeReviewPage(){
    }

    @PostMapping({"/reviewWrite"})
    public String enroll(ReviewVo review, Authentication authentication) {
        UserVo user = (UserVo)authentication.getPrincipal();
        reviewService.enroll(review,user);

        return "redirect:/reviewBoard";
    }

    @GetMapping ({"/post-reviewBoard"})//홈 화면 리뷰 조회
    public void check(ReviewVo review, Model model) {
        List<ReviewVo> tables = new ArrayList<>();

        tables.addAll(reviewService.findAll());

        model.addAttribute("tableList", tables);
    }


   // @PostMapping({"/postReview"})
    //public void enroll(ReviewVo review, Authentication authentication) {
        //UserVo user = (UserVo)authentication.getPrincipal();
        //reviewService.enroll(review,user);
   // }

    //@GetMapping ({"/checkReview"})
    //public void check(ReviewVo review, Model model) {
        //List<ReviewVo> tables = new ArrayList<>();

        //tables.addAll(reviewService.findAll());

        //model.addAttribute("tableList", tables);
    //}
}
