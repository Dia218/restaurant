package com.Ateam.demo.service;

import com.Ateam.demo.mapper.ReservationMapper;
import com.Ateam.demo.vo.ReservationVO;
import com.Ateam.demo.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    @Override
    public List<ReservationVO> getRlist() {
        return Rmapper.getlist();
    }

    @Override
    public ReservationVO getRPage(int reservationNo) {
        return Rmapper.getPage(reservationNo);
    }

    @Override
    public int modifyR(ReservationVO reservation) {
        return Rmapper.modify(reservation);
    }

    @Override
    public int deleteR(ReservationVO reservation) {
        return Rmapper.delete(reservation);
    }
}
