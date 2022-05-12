package com.Ateam.demo.controller;

import com.Ateam.demo.service.ReservationService;
import com.Ateam.demo.service.ReservationServiceImpl;
import com.Ateam.demo.vo.ReservationVO;
import com.Ateam.demo.vo.UserVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequiredArgsConstructor
public class ReservationController {

    @Autowired
    private ReservationServiceImpl Rservice;

//    class ReservationComparator implements Comparator<ReservationVO> {
//        @Override
//        public int compare(ReservationVO a,ReservationVO b){
//            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//            Date day1 = null;
//            Date day2 = null;
//            try {
//                day1 = dateFormat.parse(a.getVal_start_time());
//                day2 = dateFormat.parse(b.getVal_start_time());
//            } catch (ParseException e) {
//                e.printStackTrace();
//            }
//
//            int compare = day1.compareTo(day2);
//            return compare*-1;
//        }
//    }

    @GetMapping("/reservationPage")
    public String GetReservationPage(){
        return "postReservation";
    }

    @PostMapping ({"/postReservation"})
    public void enroll(ReservationVO reservation, Authentication authentication) {
        UserVo user = (UserVo)authentication.getPrincipal();
        Rservice.enrollR(reservation,user);
    }

    @GetMapping ({"/checkReservation"})
    public void check(ReservationVO reservation, Model model) {
        List<ReservationVO> tables = new ArrayList<>();

        tables.addAll(Rservice.findAll());

        model.addAttribute("tableList", tables);
    }



}
