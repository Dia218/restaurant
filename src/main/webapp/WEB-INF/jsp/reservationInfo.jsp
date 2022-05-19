<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        .input_wrap{
            padding: 5px 20px;
        }
        label{
            display: block;
            margin: 10px 0;
            font-size: 20px;
        }
        input{
            padding: 5px;
            font-size: 17px;
        }
        textarea{
            width: 800px;
            height: 200px;
            font-size: 15px;
            padding: 10px;
        }
        .btn{
            display: inline-block;
            font-size: 22px;
            padding: 6px 12px;
            background-color: #fff;
            border: 1px solid #ddd;
            font-weight: 600;
            width: 140px;
            height: 41px;
            line-height: 39px;
            text-align : center;
            margin-left : 30px;
            cursor : pointer;
        }
        .btn_wrap{
            padding-left : 80px;
            margin-top : 50px;
        }
    </style>
</head>
<body>
<h1>조회 페이지</h1>
<form id="modifyForm" action="/modifyReservation" method="post">
    <div class="input_wrap">
        <label>예약 번호</label>
        <input name="reservationNo" value='<c:out value="${pageInfo.reservationNo}"/>' >
    </div>
    <div class="input_wrap">
        <label>테이블 번호</label>
        <input name="tableNo" value='<c:out value="${pageInfo.tableNo}"/>' >
    </div>
    <div class="input_wrap">
        <label>테이블 자리수</label>
        <textarea rows="3" name="tableSits"><c:out value="${pageInfo.tableSits}"/></textarea>
    </div>
    <div class="btn_wrap">
        <a class="btn" id="list_btn">목록 페이지</a>
        <a class="btn" id="delete_btn">삭제</a>
        <a class="btn" id="modify_btn">수정 하기</a>
    </div>
</form>
<form id="infoForm" action="/reservationInfo" method="get">
    <input type="hidden" id="bno" name="reservationNo" value='<c:out value="${pageInfo.reservationNo}"/>'>
</form>

<script>
    let form = $("#infoForm");
    let mForm = $("#modifyForm");    // 페이지 데이터 수정 from

    $("#list_btn").on("click", function(e){
        form.find("#bno").remove();
        form.attr("action", "/reservationList");
        form.submit();
    });

    /* 수정 하기 버튼 */
    $("#modify_btn").on("click", function(e){
        mForm.submit();
    });

    /* 삭제 버튼 */
    $("#delete_btn").on("click", function(e){
        form.attr("action", "/deleteReservation");
        form.attr("method", "post");
        form.submit();
    });
</script>
</body>
</html>