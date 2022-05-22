<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Review Board</title>
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
  <link href="${pageContext.request.contextPath}/resources/static/css/styles.css" rel="stylesheet"/>
  <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
  <style>

    body {
      background-image: url("${pageContext.request.contextPath}/resources/static/assets/img/res.png");
      background-size: cover;
      background-repeat: no-repeat;
    }
    table {
      background-color: #FFFFFF;
    }
  </style>
</head>
<body>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
  <!-- Navbar Brand-->
  <a class="navbar-brand ps-3" onClick="location.href='index'">A's kitchen</a>
  <!-- Sidebar Toggle-->
  <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0 " style="margin-left: 5%" id="sidebarToggle"
          href="#!"><i class="fas fa-bars"></i></button>
  <!-- Navbar Search-->
  <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
    <div class="input-group">
      <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
             aria-describedby="btnNavbarSearch"/>
      <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
    </div>
  </form>

  <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
         aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
      <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
        <li><a class="dropdown-item" onClick="location.href='index'">Logout</a></li>
      </ul>
    </li>
  </ul>
</nav>
<!-- 네비게이션 영역 끝 -->

<!-- 게시판 글쓰기 양식 영역 시작 -->
<div id="layoutSidenav">
  <div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
      <div class="sb-sidenav-menu">
        <div class="nav">
          <div class="sb-sidenav-menu-heading">예약</div>
          <a class="nav-link" href="#">
            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
            예약하기
          </a>
          <a class="nav-link" href="#">
            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
            예약조회
          </a>
          <div class="sb-sidenav-menu-heading">후기</div>
          <a class="nav-link" href="#">
            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
            후기작성
          </a>

          <div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
               data-bs-parent="#sidenavAccordion">
            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
              <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                 data-bs-target="#pagesCollapseAuth" aria-expanded="false"
                 aria-controls="pagesCollapseAuth">
                Authentication
                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
              </a>
              <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne"
                   data-bs-parent="#sidenavAccordionPages">
                <nav class="sb-sidenav-menu-nested nav">
                  <a class="nav-link" href="login.jsp">Login</a>
                  <a class="nav-link" href="register.jsp">Register</a>
                  <a class="nav-link" href="password.jsp">Forgot Password</a>
                </nav>
              </div>
              <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                 data-bs-target="#pagesCollapseError" aria-expanded="false"
                 aria-controls="pagesCollapseError">
                Error
                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
              </a>
              <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne"
                   data-bs-parent="#sidenavAccordionPages">
                <nav class="sb-sidenav-menu-nested nav">
                  <a class="nav-link" href="401.jsp">401 Page</a>
                  <a class="nav-link" href="404.jsp">404 Page</a>
                  <a class="nav-link" href="500.jsp">500 Page</a>
                </nav>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </nav>
  </div>

  <div id="layoutSidenav_content">
    <main>
      <div class="container-fluid px-4">
        <h1 class="mt-4" style="color:#fff;">후기 조회</h1>

        <div class="card mb-4">
          <div class="card-body">
            후기 조회 화면
          </div>
        </div>
        <div class="card mb-4">
          <div class="card-header">
            <i class="fas fa-table me-1"></i>
            후기 조회
          </div>
          <div class="card-body">
            <table border="1" id="datatablesSimple">
              <thead>
              <tr>
                <th>번호</th>
                <th>작성자</th>
                <th>제목</th>
                <th>내용</th>
                <th>평점</th>
                <th>작성일</th>
              </tr>
              </thead>
              <script>
                let sum = 0;
                let count = 0;
              </script>
              <tbody>
              <c:forEach items="${tableList}" var="review">
                <tr>
                  <td><c:out value="${review.reviewNo}"/></td>
                  <td><c:out value="${review.userId}"/></td>
                  <td><c:out value="${review.reviewTitle}"/></td>
                  <td><c:out value="${review.reviewText}"/></td>
                  <td><c:out value="${review.reviewPoint}"/></td>
                  <script>
                    sum += ${review.reviewPoint}
                            count++;
                  </script>
                  <td><c:out value="${review.reviewDate}"/></td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
            <script>
              let average = sum/count;
              document.write('평균 평점 : ');
              document.write(average);
            </script>
          </div>
        </div>
      </div>
    </main>
  </div>
</div>
<!-- 후기 게시판 양식 영역 끝 -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/scripts.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/datatables-simple-demo.js"></script>
</body>