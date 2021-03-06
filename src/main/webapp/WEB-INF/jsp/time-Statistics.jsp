<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link href="${pageContext.request.contextPath}/resources/static/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

    <style>
        table {
            background-color: #FFFFFF;
            text-align: center;
        }
        th, td {
            border-bottom: 1px solid;
            padding: 10px;
        }
        th:first-child, td:first-child {
            border-left: none;
        }
    </style>
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
                    <div class="sb-sidenav-menu-heading">??????</div>
                    <a class="nav-link" onClick="location.href='createReservationAdmin'">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        ????????????
                    </a>
                    <a class="nav-link" onClick="location.href='reservationListAdmin'">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        ????????????
                    </a>
                    <div class="sb-sidenav-menu-heading">??????</div>
                    <a class="nav-link" onClick="location.href='statistics'">
                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                        ????????????
                    </a>
                </div>
            </div>
        </nav>
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">???????????? ??????</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a onClick="location.href='manager'">??????</a></li>
                    <li class="breadcrumb-item active">???????????? ????????????</li>
                </ol>
                <div class="card mb-4">
                    <div class="card-body">
                        ???????????? ??????
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <script>
                                    let count = 0;
                                    let ele = 0;
                                    let twe = 0;
                                    let one = 0;
                                    let two = 0;
                                    let thr = 0;
                                    let four = 0;
                                    let five = 0;
                                    let six = 0;
                                    let sev = 0;
                                    let eig = 0;
                                </script>
                                <table border="1" class ="col-lg-12">
                                    <thead>
                                    <tr>
                                        <th>??????</th>
                                        <th>??????</th>
                                        <th>????????????</th>
                                        <th>??????</th>
                                        <th>??????</th>
                                        <th>???????????????</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${reservationlist}" var="reservation">
                                        <tr>
                                            <td><c:out value="${reservation.reservationNo}"/></td>
                                            <td><c:out value="${reservation.userName}"/></td>
                                            <td><c:out value="${reservation.userPhone}"/></td>
                                            <td><c:out value="${reservation.reservationDate}"/></td>
                                            <td><c:out value="${reservation.reservationTime}"/></td>
                                            <td><c:out value="${reservation.tableSits}"/></td>
                                            <script>
                                                var time = "<c:out value="${reservation.reservationTime}"/>".split(':')[0];
                                                if (time === '11') {
                                                    ele++;
                                                } else if (time === '12') {
                                                    twe++;
                                                } else if (time === '13') {
                                                    one++;
                                                } else if (time === '14') {
                                                    two++;
                                                } else if (time === '15') {
                                                    thr++;
                                                } else if (time === '16') {
                                                    four++;
                                                } else if (time === '17') {
                                                    five++;
                                                } else if (time === '18') {
                                                    six++;
                                                } else if (time === '19') {
                                                    sev++;
                                                } else if (time === '20') {
                                                    eig++;
                                                }
                                            </script>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card mb-4">
                            <div class="card-header">
                                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
                                <canvas id="bar" width="50" height="25"></canvas>
                                <script>
                                    new Chart(document.getElementById("bar"), {
                                        type: 'bar',
                                        data: {
                                            labels: ["11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00"],
                                            datasets: [
                                                {
                                                    label: "Population (millions)",
                                                    backgroundColor: ["#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd", "#3e95cd"],
                                                    data: [ele, twe, one, two, thr, four, five, six, sev, eig]
                                                }
                                            ]
                                        },
                                        options: {

                                            scales: {
                                                yAxes: [{
                                                    ticks: {
                                                        beginAtzero: true,
                                                        stepSize : 1,
                                                    }
                                                }]
                                            },
                                            legend: { display: false },
                                            title: {
                                                display: true,
                                                text: '????????? ???????????? ??????'
                                            }

                                        }
                                    });
                                </script>
                            </div>
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
<script src="${pageContext.request.contextPath}/resources/static/js/scripts.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/chart-bar.js"></script>
</body>
</html>