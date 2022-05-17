//임시 백엔드 예약 조회 jsp 파일

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
    <style>
        a{
            text-decoration : none;
        }
        table{
            border-collapse: collapse;
            width: 1000px;
            margin-top : 20px;
            text-align: center;
        }
        td, th{
            border : 1px solid black;
            height: 50px;
        }
        th{
            font-size : 17px;
        }
        thead{
            font-weight: 700;
        }
        .table_wrap{
            margin : 50px 0 0 50px;
        }
        .bno_width{
            width: 12%;
        }
        .writer_width{
            width: 20%;
        }
        .regdate_width{
            width: 15%;
        }
        .updatedate_width{
            width: 15%;
        }
        .top_btn{
            font-size: 20px;
            padding: 6px 12px;
            background-color: #fff;
            border: 1px solid #ddd;
            font-weight: 600;
        }
    </style>
</head>
<body>
<h1>목록페이지입니다.</h1>

<div class="table_wrap">
    <a href="/reservationPage" class="top_btn">예약 등록</a>
    <table>
        <thead>
        <tr>
            <th class="bno_width">예약번호</th>
            <th class="bno_width">아이디</th>
            <th class="title_width">테이블번호</th>
            <th class="writer_width">테이블자리수</th>
        </tr>
        </thead>
        <c:forEach items="${reservationlist}" var="reservation">
            <tr>
                <td><c:out value="${reservation.reservationNo}"/></td>
                <td><c:out value="${reservation.userId}"/></td>
                <td><a class="move" href='/reservationInfo?reservationNo=<c:out value="${reservation.reservationNo}"/>'>
                    <c:out value="${reservation.tableNo}"/>
                </a>
                </td>
                <td><c:out value="${reservation.tableSits}"/></td>
            </tr>
        </c:forEach>
    </table>
    <form id="moveForm" method="get">
    </form>
</div>

</body>
</html>