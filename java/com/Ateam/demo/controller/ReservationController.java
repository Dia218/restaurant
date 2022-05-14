package com.Ateam.demo.controller;

import com.Ateam.demo.service.ReservationService;
import com.Ateam.demo.service.UserService;
import com.Ateam.demo.vo.ReservationVo;

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
public class ReservationController {

    private final ReservationService reservationService;

    //유저용 예약 화면 매핑
    @GetMapping("/createReservationGuest")
    public String GetReservationPage(){

        return "createReservationGuest";
    }

    @PostMapping ({"/createReservationGuest"})// 사용자 권한일 경우 사용자 예약 페이지에서 로그인 유저 정보를 전달
    public String enroll_user(ReservationVo reservation, Authentication authentication) {
        UserVo user = (UserVo)authentication.getPrincipal();
        reservationService.enrollR(reservation,user);

        return "redirect:/guest"; //예약 등록을 완료하면 로그인 후 초기 화면으로 돌아옴
    }

    //직원용 예약 화면 매핑
    @GetMapping({"/createReservationAdmin"})
    public String GetGenerationPage() {

        return "manager/createReservationAdmin";
    }

    @PostMapping ({"/createReservationAdmin"})// 매니저 권한일 경우 매니저 예약 페이지에서 받아온 유저 id값을 전달
    public String enroll_manager(ReservationVo reservation) {
        reservationService.enrollR_M(reservation);
        return "redirect:/manager"; //예약 등록을 완료하면 로그인 후 초기 화면으로 돌아옴
    }


    //유저용 조회 화면 매핑
    @GetMapping ({"/reservationListGuest"})
    public void check_user(ReservationVo reservation, Model model){

        List<ReservationVo> tables=new ArrayList<>();
        tables.addAll(reservationService.findAll());

        model.addAttribute("tableList",tables);
    }


    //직원용 조회 화면 매핑
    @GetMapping ({"/reservationListAdmin"})
    public String check_manager(ReservationVo reservation, Model model){

        List<ReservationVo> tables=new ArrayList<>();
        tables.addAll(reservationService.findAll());

        model.addAttribute("tableList",tables);

        return "manager/reservationListAdmin";
    }
}
