package com.Ateam.demo.controller;

import com.Ateam.demo.service.ReservationService;
import com.Ateam.demo.vo.ReservationVo;

import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
@RequiredArgsConstructor
public class ReservationController {

    private final ReservationService reservationService;

    //유저용 예약 화면 매핑
    @GetMapping("/createReservationGuest")
    public String GetReservationPage(){
        return "createReservationGuest";
    }

    @PostMapping ({"/createReservationGuest"})
    public String enroll(ReservationVo reservation) {

        this.reservationService.enrollR(reservation);
        return "redirect:/guest"; //예약 등록을 완료하면 로그인 후 초기 화면으로 돌아옴
    }

}
