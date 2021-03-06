<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Statistics</title>

    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
    <!--상대주소 연결 주의-->
    <link href="${pageContext.request.contextPath}/resources/static/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" onClick="location.href='manager'">A's Kitchen</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i
            class="fas fa-bars"></i></button>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
                   aria-describedby="btnNavbarSearch"/>
            <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
        </div>
    </form>
    <!-- Navbar-->
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
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">예약</div>
                    <a class="nav-link"onClick="location.href='createReservationAdmin'">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        예약생성
                    </a>
                    <a class="nav-link" onClick="location.href='reservationListAdmin'">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        예약조회
                    </a>

                    <div class="sb-sidenav-menu-heading">통계</div>
                    <a class="nav-link" onClick="location.href='statistics'">
                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                        통계보기
                    </a>
                </div>
            </div>
        </nav>
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">통계보기</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a onClick="location.href='manager'">직원</a></li>
                    <li class="breadcrumb-item active">통계보기</li>
                </ol>
                <div class="card mb-4">
                    <div class="card-body">
                        시간대별 통계 및 월별
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-bar me-1"></i>
                                시간대별 통계
                            </div>
                            <br><a style="font-size: 50px; text-decoration: none;" align="center" class="text-muted"
                                   onClick="location.href='time-Statistics'">시간대별 통계 보러가기</a><br>
                            <div class="card-footer small text-muted">시간대별 통계를 보고 싶다면 글씨를 클릭해주세요.</div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-bar me-1"></i>
                                월별 통계
                            </div>
                            <br><a style="font-size: 50px; text-decoration: none;" align="center" class="text-muted"
                                   onClick="location.href='month-Statistics'">월별 통계 보러가기</a><br>
                            <div class="card-footer small text-muted">최근 10개월간의 통계를 보고 싶다면 글씨를 클릭해주세요.</div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<!--상대주소 연결 주의-->
<script src="${pageContext.request.contextPath}/resources/static/js/scripts.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/chart-bar.js"></script>
</body>
</html>