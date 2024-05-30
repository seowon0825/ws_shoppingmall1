<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Side Bar</title>
<link rel="stylesheet" href="../css/productList.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body onclick="closeSidebar(event)">
	<aside id="sidebar" class="sidebar">
        <ul>
            <li><a href="#">Best Item</a></li>
            <li><a href="#">New Arrivals</a></li>
            <c:choose>
            	<c:when test="${not empty sessionScope.loginMember and sessionScope.loginMember.role ne 'ROLE_ADMIN'}">
            		<li><a href="/basket/basketList">Cart</a></li>
            		<li><a href="/orderList">주문내역</a></li>
            		<li><a href="/logout">logout</a></li>
            	</c:when>
            	<c:when test="${empty sessionScope.loginMember and sessionScope.loginMember.role ne 'ROLE_ADMIN'}">
            		<li><a href="/loginForm">Login</a></li>
            		<li><a href="/signUpForm">Sign Up</a></li>
            	</c:when>
            	<c:when test="${sessionScope.loginMember.role eq 'ROLE_ADMIN' }">
            		<li><a href="/admin/regProductForm">상품 등록</a></li>
            		<li><a href="/logout">logout</a></li>
            	</c:when>
            </c:choose>
        </ul>
    </aside>
</body>
</html>