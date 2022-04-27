<%@ page language="java" contentType="text/html charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.example.hello_sw.domain.UserImpl"%>
<!DOCTYPE html>
<html>
<head>
    <title>login_window</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");

        String id= request.getParameter("id");
        String password = request.getParameter("pass");

        UserImpl user=new UserImpl();
        if(user.login(id, password) == 1){
            session.setAttribute("id", id);
    %><script>alert("로그인 성공!"); location.href="main.jsp" </script><%
}else if(user.login(id, password) == 0){
%><script>alert("비밀번호가 틀렸습니다!!"); history.back(); </script><%
}else{
%><script>alert("아이디가 틀렸습니다!!"); history.back(); </script><%
    }
%>
</body>
</html>
