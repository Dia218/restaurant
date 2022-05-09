package com.Ateam.demo.controller;

import com.Ateam.demo.service.ReservationService;
import com.Ateam.demo.vo.ReservationVO;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class ReservationController {

    @Autowired
    private ReservationService Rservice;

    @GetMapping("/reservationPage")
    public String GetReservationPage(){
        return "postReservation";
    }

    @PostMapping ({"/postReservation"})
    public void enroll(ReservationVO reservation) {
        Rservice.enrollR(reservation);
    }
}
