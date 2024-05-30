<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문내역</title>
<link rel="stylesheet" href="../css/header_footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="../js/sidebar.js"></script>
</head>
<body onclick="closeSidebar(event)">
	<jsp:include page="../front/header.jsp"></jsp:include>
	<jsp:include page="../front/sidebar.jsp"></jsp:include>
    <main>
	<h3 class="pageTitle">주문 내역</h3>
	<table class="table jobs-table text-center">
            <thead>
            	<tr>
            		<th scope="col"></th>
            		<th scope="col">주문 번호</th>
            		<th scope="col">주문한 상품</th>
            		<th scope="col">주문 금액</th>
            		<th scope="col">주문 일자</th>
            		<th scope="col"></th>
            	</tr>
            </thead>
            <tbody class="table-group-divider">
            	<c:forEach var="dto" items="${list }" varStatus="status">
            	<tr class="border-bottom">
            		<td>${status.count }</td>
            		<td>${dto.order_no }</td>
            		<td>${dto.product_name }</td>
            		<td>${dto.product_price }</td>
            		<td>${dto.product_order_date }</td>
            		<td><a href="#" class="btn btn-light">주문 상세보기</a></td>
            	</tr>
            	</c:forEach>
            </tbody>	
            </table>
    </main>
	<jsp:include page="../front/footer.jsp"></jsp:include>
</body>
</html>
