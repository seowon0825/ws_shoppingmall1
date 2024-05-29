<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Form</title>
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
  <h3 class="pageTitle">주문하기</h3>
  	<table class="table jobs-table text-center">
    <thead>
    	<tr>
    		<th scope="col">상품 이미지</th>
    		<th scope="col">상품 이름</th>
    		<th scope="col">상품 가격</th>
    		<th scope="col">상품 수량</th>
    	</tr>
    </thead>
    <tbody class="table-group-divider">
    	<tr class="border-bottom">
    		<td><img src="${dto.imgurl }" class="adminProductImg"></td>
    		<td><a href="/memberProductDetail?product_no=${dto.product_no }">${dto.product_name }</a></td>
    		<td id="price${dto.product_no }">${dto.product_price }원</td>
    		<td>
    			<div>1</div>
    			<!-- 
    			<input type="number" id="quantity${dto.product_no }" name="product_order_quantity" value="1" min="1" onchange="oneOrderUpdatePrice(${dto.product_no },${dto.product_price })">
    			 -->
    		</td>
    	</tr>
    </tbody>	
    <tfoot>
    	<tr>
    		<td colspan="5" id="grandTotal">총 결제금액 : ${dto.product_price }원</td>
    		<input type="hidden" id="totalAmount" name="totalAmount">
    	</tr>
    </tfoot>
    </table>
    <a href="/basket/orderForm?product_no=${dto.product_no }&product_order_quantity=1" class="btn btn-light" >결제하기</a>
  </div>
</main>
<jsp:include page="../front/footer.jsp"></jsp:include>
</body>
</html>