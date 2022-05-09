package com.Ateam.demo.service;

import com.Ateam.demo.mapper.ReservationMapper;
import com.Ateam.demo.vo.ReservationVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationServiceImpl implements ReservationService {
    @Autowired
    private ReservationMapper Rmapper;

    @Override
    public void enrollR(ReservationVO reservation) {
        Rmapper.enrollReservation(reservation);
    }
}
