<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>장바구니</title>
<link rel="stylesheet" href="../css/header_footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="../js/sidebar.js"></script>
<script src="../js/basketScript.js"></script>
</head>
<body onclick="closeSidebar(event)">
<jsp:include page="../front/header.jsp"></jsp:include>
<jsp:include page="../front/sidebar.jsp"></jsp:include>
<main>
<div class="container">
<h3 class="pageTitle">장바구니</h3>
<form action="/basket/orderForm" method="post">
	<table class="table jobs-table text-center">
	<thead>
		<tr>
			<th scope="col"><input type="checkbox" name="allOrder" id="checkAll"></th>
			<th scope="col">상품 이미지</th>
			<th scope="col">상품 이름</th>
			<th scope="col">상품 가격</th>
			<th scope="col">상품 수량</th>
			<th scope="col">합계액</th>
		</tr>
	</thead>
	<tbody class="table-group-divider">
		<c:forEach var="dto" items="${basketList }">
		<tr class="border-bottom">
			<td><input type="checkbox" class="orderCheckbox" name="choiceOrder" value="${dto.product_no }"></td>
			<td><img src="${dto.imgurl }" class="adminProductImg"></td>
			<td><a href="/memberProductDetail?product_no=${dto.product_no }">${dto.product_name }</a></td>
			<td id="price${dto.product_no }">${dto.product_price }원</td>
			<td>
				<input type="number" id="quantity${dto.product_no }" name="product_order_quantity" value="${dto.basket_quantity }" min="1" onchange="updatePrice(${dto.product_no },${dto.product_price })">
			</td>
		</tr>
		</c:forEach>
	</tbody>	
	<tfoot>
		<tr>
			<td colspan="5" id="grandTotal">총 합계 : 0원</td>
		</tr>
	</tfoot>
	</table>
	<a href="" class="btn btn-light">선택한 상품 삭제하기</a>
	<button type="submit" class="btn btn-light" >선택한 상품 주문하기</button>
</form>
</div>
</main>
<script src="../js/basketScript.js"></script>
<jsp:include page="../front/footer.jsp"></jsp:include>
</body>
</html>