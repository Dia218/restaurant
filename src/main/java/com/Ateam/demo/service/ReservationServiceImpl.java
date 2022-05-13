package com.Ateam.demo.service;

import com.Ateam.demo.mapper.ReservationMapper;
import com.Ateam.demo.vo.ReservationVO;
import com.Ateam.demo.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationServiceImpl implements ReservationService {
    @Autowired
    private ReservationMapper Rmapper;

    @Override
    public void enrollR(ReservationVO reservation,UserVo user) {
        reservation.setUserId(user.getUserId());
        Rmapper.enrollReservation(reservation);
    }

    public void enrollR_M(ReservationVO reservation) {
        Rmapper.enrollReservation(reservation);
    }
}
