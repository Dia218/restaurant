package com.Ateam.demo.controller;

import com.Ateam.demo.service.ReservationImpl;
import com.Ateam.demo.vo.ReservationVo;

import com.Ateam.demo.vo.UserVo;
import lombok.RequiredArgsConstructor;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;


@Controller
@RequiredArgsConstructor
public class ReservationController {

    private final ReservationImpl reservationService;

    //유저용 예약 화면 매핑
    @GetMapping("/createReservationGuest")
    public String GetReservationPage(){

        return "thymeleaf/createReservationGuest";
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

        return "thymeleaf/manager/createReservationAdmin";
    }

    @PostMapping ({"/createReservationAdmin"})// 매니저 권한일 경우 매니저 예약 페이지에서 받아온 유저 id값을 전달
    public String enroll_manager(ReservationVo reservation) {
        reservationService.enrollR_M(reservation);
        return "redirect:/manager"; //예약 등록을 완료하면 로그인 후 초기 화면으로 돌아옴
    }


    @GetMapping({"/reservationListGuest"})  // 예약 리스트 조회
    public void GetReservationList(Model model) {

        model.addAttribute("reservationlist",reservationService.getRlist());
    }

    @GetMapping({"/reservationInfoGuest"})    // 예약 조회
    public void GetReservation(int reservationNo, Model model) {
        model.addAttribute("pageInfo", reservationService.getRPage(reservationNo));
    }

    @PostMapping("/modifyReservationGuest")  // 수정 form post로 데이터 받아와 수정
    public String PostModify(ReservationVo reservation, RedirectAttributes rttr) {

        reservationService.modifyR(reservation);

        rttr.addFlashAttribute("result", "modify success");

        return "redirect:/reservationListGuest";
    }

    @PostMapping({"/deleteReservationGuest"})    // 예약 삭제 컨트롤
    public  String PostDelete(ReservationVo reservation,RedirectAttributes rttr) {
        reservationService.deleteR(reservation);

        rttr.addFlashAttribute("result", "delete success");

        return "redirect:/reservationListGuest";
    }

    //직원
    @GetMapping({"/reservationListAdmin"})  // 예약 리스트 조회
    public void GetReservationList_manager(Model model) {

        model.addAttribute("reservationlist",reservationService.getRlist());
    }

    @GetMapping({"/reservationInfoAdmin"})    // 예약 조회
    public void GetReservation_manager(int reservationNo, Model model) {
        model.addAttribute("pageInfo", reservationService.getRPage(reservationNo));
    }

    @PostMapping("/modifyReservationAdmin")  // 수정 form post로 데이터 받아와 수정
    public String PostModify_manager(ReservationVo reservation, RedirectAttributes rttr) {

        reservationService.modifyR(reservation);

        rttr.addFlashAttribute("result", "modify success");

        return "redirect:/reservationListAdmin";
    }

    @PostMapping({"/deleteReservationAdmin"})    // 예약 삭제 컨트롤
    public  String PostDelete_manager(ReservationVo reservation,RedirectAttributes rttr) {
        reservationService.deleteR(reservation);

        rttr.addFlashAttribute("result", "delete success");

        return "redirect:/reservationListAdmin";
    }

    //직원용 통계 매핑
    @GetMapping({"/statistics"})
    public void Statistics(Model model) {

        model.addAttribute("reservationlist",reservationService.getRlist());
    }

    @GetMapping({"/month-Statistics"})  // 월별 통계 조회
    public void GetMonthStatistics(Model model) {

        model.addAttribute("reservationlist",reservationService.getRlist());
    }

    @GetMapping({"/time-Statistics"})  // 시간별 통계 조회
    public void GetTimeStatistics(Model model) {

        model.addAttribute("reservationlist",reservationService.getRlist());
    }
}
