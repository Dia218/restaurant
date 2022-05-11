package com.Ateam.demo.service;

import com.Ateam.demo.vo.ReservationVO;
import com.Ateam.demo.vo.UserVo;

public interface ReservationService {
    public void enrollR(ReservationVO reservation, UserVo user);
}
