package com.Ateam.demo.service;

import com.Ateam.demo.vo.ReservationVO;
import com.Ateam.demo.vo.UserVo;

public interface ReservationService {
    public void enrollR(ReservationVO reservation, UserVo user); // 사용자 예약 등록
    public void enrollR_M(ReservationVO reservation); // 매니저 예약 등록
}
