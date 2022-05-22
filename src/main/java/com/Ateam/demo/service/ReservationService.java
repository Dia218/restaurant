package com.Ateam.demo.service;

import com.Ateam.demo.vo.ReservationVO;
import com.Ateam.demo.vo.UserVo;

import java.util.List;

public interface ReservationService {
    public void enrollR(ReservationVO reservation, UserVo user); // 사용자 예약 등록
    public void enrollR_M(ReservationVO reservation); // 매니저 예약 등록

    public List<ReservationVO> getRlist();  // 예약 리스트 조회 (매니저)

    public List<ReservationVO> getRlist_u(String userId); // // 예약 리스트 조회 (유저)
    
    public ReservationVO getRPage(int reservationNo); // 예약 조회
    
    public int modifyR(ReservationVO reservation);  // 예약 수정
    
    public int deleteR(ReservationVO reservation); // 예약 삭제
}
