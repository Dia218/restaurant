package com.Ateam.demo.service;

import com.Ateam.demo.vo.UserVo;
import com.Ateam.demo.vo.ReservationVO;

import java.util.List;

public interface ReservationService {
    public void enrollR(ReservationVO reservation,UserVo user);

    public void checkR(ReservationVO reservation);

    public List<ReservationVO> findAll();
}
