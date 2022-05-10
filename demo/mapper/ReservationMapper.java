package com.Ateam.demo.mapper;

import com.Ateam.demo.vo.ReservationVo;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ReservationMapper {

    void enrollReservation(ReservationVo reservation);

}
