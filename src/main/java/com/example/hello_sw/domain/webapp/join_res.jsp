<%@ page language="java" contentType="text/html charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.hello_sw.domain.User"%>
<%@page import="com.example.hello_sw.domain.UserImpl"%>
<!DOCTYPE html>
<html>
<head>
    <title>login</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");

        User user=new User();
        user.setId(request.getParameter("id"));
        user.setPassword(request.getParameter("pass"));
        user.setName(request.getParameter("name"));
        user.setPhone_number(request.getParameter("phone_number"));
        user.setGender(request.getParameter("gender"));
        user.setAge(Integer.parseInt(request.getParameter("age")));

        UserImpl ui=new UserImpl();
        ui.join(user);
    %>
    <script>alert("회원가입을 축하합니다!"); location.href="login_form.jsp";</script>
</body>
</html>
