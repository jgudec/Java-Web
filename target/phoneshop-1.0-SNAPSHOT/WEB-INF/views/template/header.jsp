<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Le
  Date: 1/2/2016
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Phone Webshop</title>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>

    <%--Jquery--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <!-- Font Awesome -->
    <link
            href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
            rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <!-- MDB -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/1.0.0/mdb.min.css"
            rel="stylesheet"
    />

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
<%--    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">--%>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">

</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">PhoneShop.eu</a>
            <button
                    class="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarText"
                    aria-controls="navbarText"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
            >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/" /> ">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="<c:url value="/product/productList" />">Products</a></li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <li class="nav-item"><a class="nav-link">Welcome:${pageContext.request.userPrincipal.name} </a></li>
                        <li class="nav-item"><a class="nav-link" href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
                        <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/customerOrders" />">Orders</a></li>
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/customer/cart" />">Cart</a></li>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                            <li class="nav-item"><a class="nav-link" href="<c:url value="/admin" />">Admin</a></li>
                        </c:if>
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <li class="nav-item"><a class="nav-link" href="<c:url value="/login/" />">Login</a></li>
                        <li class="nav-item"><a class="nav-link" href="<c:url value="/register" />">Register</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
    </div>
</div>