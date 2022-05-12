package com.Ateam.demo.mapper;


import com.Ateam.demo.vo.ReservationVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReservationMapper {
    public void enrollReservation(ReservationVO reservation);

    public void checkReservation(ReservationVO reservation);

    List<ReservationVO> findAll();
}
