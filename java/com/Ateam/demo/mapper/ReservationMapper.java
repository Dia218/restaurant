package com.Ateam.demo.mapper;

import com.Ateam.demo.vo.ReservationVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReservationMapper {

    public void enrollReservation(ReservationVo reservation);

    public List<ReservationVo> getlist();   // 조회할 예약 리스트 get

    public ReservationVo getPage(int reservationNo);    // 조회한 예약 객체 get

    public int modify(ReservationVo reservation);   // 예약 수정

    public int delete(ReservationVo reservation); // 예약 삭제
}
