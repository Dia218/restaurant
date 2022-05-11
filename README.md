
CREATE TABLE RESERVATION (
    RESERVATION_NO int(11) NOT NULL AUTO_INCREMENT COMMENT '예약 번호',
    USER_ID varchar(255) NOT NULL COMMENT '아이디',
    TABLE_NO int(20)NOT NULL COMMENT '테이블 번호',
    TABLE_SITS int(20)NOT NULL COMMENT '테이블 자리 수',
    RESERVATION_DATE date DEFAULT NULL COMMENT '예약 날짜',
    RESERVATION_TIME time DEFAULT NULL COMMENT '예약 시간',
     PRIMARY KEY (`RESERVATION_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

테이블은 위와 같이 생성하였습니다
tb_user 테이블의 USER_ID 컬럼의 속성을 Unique로 수정하고 위 reservation 테이블의 USER_ID 컬럼을 외래키로 사용하여 참조하였습니다

아직 프론트 UI와 동기화가 안된 상태이며 임시로 postReservation.html을 통해 테이블 번호와 테이블 자리 수를 입력받고 DB에 저장합니다
따라서 프론트 HTML 파일에 있는 날짜와 시간 입력이 필요합니다 
(현재 날짜와 시간은 DEFAULT NULL로 설정해뒀으며 ReservationVO에 변수값은 설정해둔 상황)

#프론트와 동기화를 위해 설정할 것
-프론트의 html파일 내의 input 필드 name 속성을 ReservationVO 변수명과 동일하게 해야함 (날짜, 시간)
-reservation.xml 의 insert 쿼리값 추가
