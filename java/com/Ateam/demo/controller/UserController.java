package com.Ateam.demo.controller;

import com.Ateam.demo.service.UserService;
import com.Ateam.demo.vo.UserVo;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    /**
     * localhost:8080 시 index(메인화면) 으로 redirect
     * @return
     */
    @GetMapping("/index")
    public String root() {
        return "redirect:/";
    }

    @GetMapping({"/login"})
    public String login() {
        return "login";
    }

    /**
     * 회원가입 폼
     * @return
     */
    @GetMapping({"/signUp"})
    public String signUpForm() {
        return "signup";
    }

    /**
     * 로그인 실패 폼
     * @return
     */
    @GetMapping({"/login_failed"})
    public String loginFailed() {
        return "login_failed";
    }

    /**
     * 페이지 접근 실패 (권한)
     * @return
     */
    @GetMapping({"/access_denied"})
    public String access_Denied() {
        return "access_denied";
    }

    /**
     * 회원가입 진행
     * @param userVo
     * @return
     */

    @PostMapping({"/signUp"})
    public String signUp(UserVo userVo) {
        this.userService.joinUser(userVo);
        return "redirect:/login";
    }

    /**
     * 유저 페이지
     * @param model
     * @param authentication
     * @return
     */

    @GetMapping({"/guest"})
    public String userAccess(Model model, Authentication authentication) {
        //Authentication 객체를 통해 유저 정보를 가져올 수 있다.
        //UserVo userVo = (UserVo)authentication.getPrincipal(); //userDetail 객체를 가져옴
        //model.addAttribute("info", String.format("%s의 %s님 환영합니다.%s님의 전화번호: %s", userVo.getUserId(), userVo.getUserName(), userVo.getUserId(), userVo.getUserPhone()));
        return "guest";
    }

    @GetMapping({"/manager"})
    public String managerAccess() {
        //Authentication 객체를 통해 유저 정보를 가져올 수 있다.
        //UserVo userVo = (UserVo) authentication.getPrincipal();  //userDetail 객체를 가져옴
        //model.addAttribute("info", userVo.getUserId() +"의 "+ userVo.getUserName()+ "님");      //유저 아이디
        return "manager/manager";
    }


    //직원용 통계 매핑
    @GetMapping({"/statistics"})
    public String Statistics() {

        return "manager/statistics";
    }
    //시간별 통계
    @GetMapping({"/time_Statistics"})
    public String timeSt(){

        return "manager/time_Statistics";
    }
    //월별 통계
    @GetMapping({"/month_Statistics"})
    public String monthSt(){

        return "manager/month_Statistics";
    }
}
