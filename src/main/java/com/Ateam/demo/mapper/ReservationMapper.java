package com.Ateam.demo.mapper;

import com.Ateam.demo.vo.ReservationVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReservationMapper {
    public void enrollReservation(ReservationVO reservation);
}
