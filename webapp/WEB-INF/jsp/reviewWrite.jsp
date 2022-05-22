<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Review Write</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/static/css/styles.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/static/css/star.css" rel="stylesheet"/>
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
        #myform fieldset {
            display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
            direction: rtl; /* 이모지 순서 반전 */
            border: 0; /* 필드셋 테두리 제거 */
        }
        #myform fieldset legend {
            text-align: left;
        }
        #myform input[type=radio] {
            display: none; /* 라디오박스 감춤 */
        }
        #myform label {
            font-size: 3em; /* 이모지 크기 */
            color: transparent; /* 기존 이모지 컬러 제거 */
            text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
        }
        #myform label:hover {
            text-shadow: 0 0 0 #a00; /* 마우스 호버 */
        }
        #myform label:hover ~ label {
            text-shadow: 0 0 0 #a00; /* 마우스 호버 뒤에오는 이모지들 */
        }
        #myform input[type=radio]:checked ~ label {
            text-shadow: 0 0 0 #a00; /* 마우스 클릭 체크 */
        }
    </style>
</head>
<body>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" onClick="location.href='guest'">A's kitchen</a>
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
                    <a class="nav-link" onClick="location.href='createReservationGuest'">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        예약하기
                    </a>
                    <a class="nav-link" onClick="location.href='reservationListGuest'">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        예약조회
                    </a>
                    <div class="sb-sidenav-menu-heading">후기</div>
                    <a class="nav-link" onClick="location.href='reviewBoard'">
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
                <h1 class="mt-4" style="color:#fff;">후기 작성</h1>

                <div class="card mb-4">
                    <div class="card-body">
                        후기를 작성해주세요.
                    </div>
                </div>
                <form method="post" action="/reviewWrite">
                    <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                        <thead>
                        <tr>
                            <th colspan="2" style="background-color: #eeeeee; text-align: center;">후기 작성 양식</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input type="text" class="form-control" placeholder="글 제목" name="reviewTitle"
                                       maxlength="50"></td>
                        </tr>
                        <tr>
                            <td><textarea class="form-control" placeholder="글 내용" name="reviewText" maxlength="2048"
                                          style="height: 350px;"></textarea></td>
                        </tr>
                        <tr>
                            <td>
                                평점을 입력하려면 드래그 해주세요<br>
                                <span class="star">
                                    ★★★★★
                                    <span>★★★★★</span>
                                    <input type="range" name="reviewPoint" oninput="drawStar(this)" value="0.5" step="0.5" min="0.5" max="5">
                                </span>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <!-- 글쓰기 버튼 생성 -->
                    <input type="submit" class="btn btn-primary pull-right" value="작성하기">
                </form>
            </div>
        </main>
    </div>
</div>
<!-- 게시판 글쓰기 양식 영역 끝 -->

<!-- 부트스트랩 참조 영역 -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/star.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/scripts.js"></script>
</body>
