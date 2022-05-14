package com.Ateam.demo.service;

import com.Ateam.demo.vo.ReservationVo;
import com.Ateam.demo.vo.UserVo;

import java.util.List;

public interface ReservationService {
    public void enrollR(ReservationVo reservation,UserVo user) ; //사용자 예약 등록

    public void enrollR_M(ReservationVo reservation);


    public List<ReservationVo> findAll();
}
