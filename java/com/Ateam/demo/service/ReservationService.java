package com.Ateam.demo.service;

import com.Ateam.demo.vo.ReservationVo;
import com.Ateam.demo.vo.UserVo;

import java.util.List;

public interface ReservationService {
    public void enrollR(ReservationVo reservation,UserVo user) ; //사용자 예약 등록

    public void enrollR_M(ReservationVo reservation); //매니저 예약 등록


    public List<ReservationVo> getRlist();  // 예약 리스트 조회

    public List<ReservationVo> getRlist_u(String userId); // // 예약 리스트 조회 (유저)
    public ReservationVo getRPage(int reservationNo); // 예약 조회

    public int modifyR(ReservationVo reservation);  // 예약 수정

    public int deleteR(ReservationVo reservation); // 예약 삭제
}
