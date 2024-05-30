<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Form</title>
<link rel="stylesheet" href="../css/header_footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="../js/sidebar.js"></script>
</head>
<body onclick="closeSidebar(event)">
<jsp:include page="../front/header.jsp"></jsp:include>
<jsp:include page="../front/sidebar.jsp"></jsp:include>
<main>
  <div class="container">
  <h1 class="pageTitle">주문하기</h1>
  	<form action="/basket/order" method="post">
		<table class="centered-table">
			<tr>
				<th>이름</th>
				<td><input type="text" class="form-control" name="mem_name" value="${dto.mem_name }"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="tel" class="form-control" name="mem_tel" value="${dto.mem_tel }"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<input type="text" class="form-control" name="order_addr" value="${dto.mem_addr }">
				</td>
			</tr>
			<tr>
				<th>
					<input type="hidden" name="product_no" value="${product_no }">
					<input type="hidden" name="product_order_quantity" value="${product_order_quantity }">
				</th>
				<td>
					<input type="submit" class="btn btn-light" value="주문하기">
				</td>
			</tr>
		</table>
  	</form>
  </div>
</main>
<jsp:include page="../front/footer.jsp"></jsp:include>
</body>
</html>