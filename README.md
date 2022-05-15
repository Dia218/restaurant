
CREATE TABLE REVIEW (
REVIEW_NO int(11) NOT NULL AUTO_INCREMENT COMMENT '후기 번호',
USER_ID varchar(255) NOT NULL COMMENT '아이디',
REVIEW_TITLE varchar(255) NOT NULL COMMENT '리뷰 제목',
REVIEW_TEXT TEXT NOT NULL COMMENT '리뷰 내용',
REVIEW_POINT v
PRIMARY KEY (`REVIEW_NO`),
foreign key (USER_ID) references TB_USER(USER_ID)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

테이블은 위와 같이 생성하였습니다
tb_user 테이블의 USER_ID 컬럼의 속성을 Unique로 수정하고 위 reservation 테이블의 USER_ID 컬럼을 외래키로 사용하여 참조하였습니다

아직 프론트 UI와 동기화가 안된 상태이며 임시로 postReview.html을 통해 제목과 내용을 입력받고 DB에 저장합니다


