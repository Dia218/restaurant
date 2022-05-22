package com.Ateam.demo.mapper;

import com.Ateam.demo.vo.ReservationVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReservationMapper {
    public void enrollReservation(ReservationVO reservation);

    public List<ReservationVO> getlist();   // 조회할 예약 리스트 get

    public List<ReservationVO> getlist_u(String userId);   // 조회할 예약 리스트 (유저 필터링)

    public ReservationVO getPage(int reservationNo);    // 조회한 예약 객체 get

    public int modify(ReservationVO reservation);   // 예약 수정
    
    public int delete(ReservationVO reservation); // 예약 삭제
}
