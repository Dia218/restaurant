package com.Ateam.demo.service;

import com.Ateam.demo.mapper.ReservationMapper;
import com.Ateam.demo.vo.ReservationVo;
import com.Ateam.demo.vo.UserVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@RequiredArgsConstructor
public class ReservationImpl implements  ReservationService{

    private final ReservationMapper reservationMapper;

    @Override
    public void enrollR(ReservationVo reservation,UserVo user) {
        reservation.setUserId(user.getUserId());
        reservation.setUserName(user.getUserName());
        reservation.setUserPhone(user.getUserPhone());
        reservationMapper.enrollReservation(reservation);
    }

    @Override
    public void enrollR_M(ReservationVo reservation) {
        reservationMapper.enrollReservation(reservation);
    }

    @Override
    public List<ReservationVo> getRlist() {
        return reservationMapper.getlist();
    }

    @Override
    public ReservationVo getRPage(int reservationNo) {
        return reservationMapper.getPage(reservationNo);
    }

    @Override
    public int modifyR(ReservationVo reservation) {
        return reservationMapper.modify(reservation);
    }

    @Override
    public int deleteR(ReservationVo reservation) {
        return reservationMapper.delete(reservation);
    }
}
