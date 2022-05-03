회원가입 및 로그인

TODO

권한 분리 (완료)

참고 https://velog.io/@limsubin/Spring-Boot-%ED%9A%8C%EC%9B%90%EA%B0%80%EC%9E%85-%EA%B5%AC%ED%98%84-%ED%95%B4%EB%B3%B4%EC%9E%90 https://velog.io/@limsubin/Spring-Boot-spring-security-%EB%A1%9C-%EB%A1%9C%EA%B7%B8%EC%9D%B8%EC%9D%84-%EA%B5%AC%ED%98%84%ED%95%98%EC%9E%90

mariaDB 사용 yml(propoties)파일 수정 필요 (각자 설정한 DB정보에 맞게) 테이블은 위 블로그와 같이 설정

생성한 테이블에 USER_AUTH 컬럼 존재 > 초기에 회원가입한 데이터의 USER_AUTH컬럼값(디폴트 "ROLE_USER")을 "ROLE_ADMIN"으로 수정해야 해당 아이디를 ADMIN계정으로 사용 가능

그 외 필요하다면 패키지 경로 등 각자 로컬 환경에 맞게 수정


+현재 로그인 후 화면이 넘어가지 않습니다. 즉, 회원가입은 되었으나 로그인 과정에서 오류가 발생하는데
코드 확인 부탁드립니다..