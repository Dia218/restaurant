package com.Ateam.demo.controller;

import com.Ateam.demo.service.ReservationService;
import com.Ateam.demo.vo.ReservationVO;
import com.Ateam.demo.vo.UserVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class ReservationController {

    @Autowired
    private ReservationService Rservice;

    @GetMapping("/reservationPage")
    public String GetReservationPage(Authentication authentication){
        UserVo user = (UserVo)authentication.getPrincipal();
        if(user.getUserAuth().equals("ROLE_ADMIN"))   // 매니저 권한일 경우 매니저 예약 페이지 반환
            return "createReservation"; // 매니저 페이지 반환
        else
            return "postReservation";   // 사용자 페이지 반환
    }

    @PostMapping ({"/postReservation"}) // 사용자 권한일 경우 사용자 예약 페이지에서 로그인 유저 정보를 전달
    public void enroll_user(ReservationVO reservation, Authentication authentication) {
        UserVo user = (UserVo)authentication.getPrincipal();
        Rservice.enrollR(reservation,user);
    }

    @PostMapping ({"/postReservation_m"}) // 매니저 권한일 경우 매니저 예약 페이지에서 받아온 유저 id값을 전달
    public void enroll_manager(ReservationVO reservation) {
        Rservice.enrollR_M(reservation);
    }
}
