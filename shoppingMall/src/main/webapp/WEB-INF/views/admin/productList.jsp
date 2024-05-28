<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Layout</title>
<link rel="stylesheet" href="../css/header_footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="../js/sidebar.js"></script>
</head>
<body onclick="closeSidebar(event)">
	<jsp:include page="../front/header.jsp"></jsp:include>
	<jsp:include page="../front/sidebar.jsp"></jsp:include>
    <main>
        <div class="container">
        	<h3 class="pageTitle">상품 리스트</h3>
            <table class="table jobs-table text-center">
            <thead>
            	<tr>
            		<th scope="col">상품 번호</th>
            		<th scope="col">상품 이미지</th>
            		<th scope="col">상품 이름</th>
            		<th scope="col">상품 가격</th>
            		<th scope="col">상품 재고</th>
            	</tr>
            </thead>
            <tbody class="table-group-divider">
            	<c:forEach var="dto" items="${productList }">
            	<tr class="border-bottom">
            		<td>${dto.product_no }</td>
            		<td><img src="${dto.imgurl }" class="adminProductImg"></td>
            		<td><a href="/admin/getProductDetail?product_no=${dto.product_no }">${dto.product_name }</a></td>
            		<td>${dto.product_price }</td>
            		<td>${dto.product_inventory }</td>
            	</tr>
            	</c:forEach>
            </tbody>	
            </table>
        </div>
    </main>
<jsp:include page="../front/footer.jsp"></jsp:include>
</body>
</html>