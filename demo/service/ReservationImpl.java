package com.Ateam.demo.service;

import com.Ateam.demo.mapper.ReservationMapper;
import com.Ateam.demo.vo.ReservationVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
public class ReservationImpl implements  ReservationService{

    private final ReservationMapper reservationMapper;

    @Override
    public void enrollR(ReservationVo reservation) {
        reservationMapper.enrollReservation(reservation);
    }
}
