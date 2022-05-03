show databases;
use user_inform;
select *from tb_user;
CREATE TABLE TB_USER (
    USER_NO int(11) NOT NULL AUTO_INCREMENT COMMENT '사용자번호',
    USER_ID varchar(255) NOT NULL COMMENT '아이디',
    USER_PW varchar(256) NOT NULL COMMENT '비밀번호',
    USER_NAME varchar(255) NOT NULL COMMENT '사용자명',
    USER_AUTH varchar(255) NOT NULL COMMENT '권한',
    USER_DOB int(20)NOT NULL COMMENT '생일',
    USER_EMAIL varchar(255) DEFAULT NULL COMMENT '이메일',
    USER_PHONE varchar(255) NOT NULL COMMENT '전화번호',
    APPEND_DATE datetime DEFAULT NULL COMMENT '추가날짜',
    UPDATE_DATE datetime DEFAULT NULL COMMENT '수정날짜',
     PRIMARY KEY (`USER_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
UPDATE user_inform.tb_user SET USER_AUTH = "ROLE_ADMIN" WHERE USER_NO=4;