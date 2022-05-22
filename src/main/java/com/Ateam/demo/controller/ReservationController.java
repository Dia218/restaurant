package com.Ateam.demo.controller;

import com.Ateam.demo.service.ReservationService;
import com.Ateam.demo.vo.ReservationVO;
import com.Ateam.demo.vo.UserVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
public class ReservationController {

    @Autowired
    private ReservationService Rservice;

    @GetMapping("/reservationPage")
    public String GetReservationPage(Authentication authentication){
        UserVo user = (UserVo)authentication.getPrincipal();
        if(user.getUserAuth().equals("ROLE_ADMIN"))   // 매니저 권한일 경우 매니저 예약 페이지 반환
            return "thymeleaf/createReservation"; // 매니저 페이지 반환
        else
            return "thymeleaf/postReservation";   // 사용자 페이지 반환
    }

    @PostMapping ({"thymeleaf/postReservation"}) // 사용자 권한일 경우 사용자 예약 페이지에서 로그인 유저 정보를 전달
    public void enroll_user(ReservationVO reservation, Authentication authentication) {
        UserVo user = (UserVo)authentication.getPrincipal();
        Rservice.enrollR(reservation,user);
    }

    @PostMapping ({"thymeleaf/postReservation_m"}) // 매니저 권한일 경우 매니저 예약 페이지에서 받아온 유저 id값을 전달
    public void enroll_manager(ReservationVO reservation) {
        Rservice.enrollR_M(reservation);
    }

    @GetMapping({"/reservationList"})  // 예약 리스트 조회
    public void GetReservationList(Model model) {

        model.addAttribute("reservationlist",Rservice.getRlist());
    }

    @GetMapping({"/reservationInfo"})    // 예약 조회
    public void GetReservation(int reservationNo, Model model) {
        model.addAttribute("pageInfo", Rservice.getRPage(reservationNo));
    }

    @PostMapping("/modifyReservation")  // 수정 form post로 데이터 받아와 수정
    public String PostModify(ReservationVO reservation, RedirectAttributes rttr) {

        Rservice.modifyR(reservation);

        rttr.addFlashAttribute("result", "modify success");

        return "redirect:/reservationList";
    }

    @PostMapping({"/deleteReservation"})    // 예약 삭제 컨트롤
    public String PostDelete(ReservationVO reservation,RedirectAttributes rttr) {
        Rservice.deleteR(reservation);

        rttr.addFlashAttribute("result", "delete success");

        return "redirect:/reservationList";
    }

    @GetMapping({"/monthStatistics"})  // 월별 통계 조회
    public void GetMonthStatistics(Model model) {

        model.addAttribute("reservationlist",Rservice.getRlist());
    }

    @GetMapping({"/timeStatistics"})  // 시간별 통계 조회
    public void GetTimeStatistics(Model model) {

        model.addAttribute("reservationlist",Rservice.getRlist());
    }
}
