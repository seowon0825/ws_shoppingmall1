<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이용자 상품상세페이지</title>
<link rel="stylesheet" href="../css/header_footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="../js/sidebar.js"></script>
</head>
<body onclick="closeSidebar(event)">
	<jsp:include page="../front/header.jsp"></jsp:include>
	<jsp:include page="../front/sidebar.jsp"></jsp:include>
    <main>
        <div class="container">
        <h3 class="pageTitle">상품 상세조회</h3>
        <table class="table jobs-table text-center">
            <thead>
            	<tr>
					<th scope="col">상품 상세설명</th>
            		<th scope="col"></th>            		
            		<th scope="col">상품 이름</th>
            		<th scope="col">상품 가격</th>
            		
            	</tr>
            </thead>
            <tbody class="table-group-divider">
            	<tr class="border-bottom">
					<td>${dto.product_info }</td>
            		<td><img src="${dto.imgurl }" class="adminProductDetailImg"></td>
            		<td>${dto.product_name }</td>
            		<td>${dto.product_price }원</td>
            	</tr>
            </tbody>	
            </table>
            <c:choose>
            	<c:when test="${dto.product_inventory == 0}">
            		<div class="btn-light">품절</div>
            	</c:when>
            	<c:otherwise>
            		<a href="/basket/putBasket?product_no=${dto.product_no }" class="btn btn-light">장바구니 담기</a>
					<a href="/basket/oneProductOrder?product_no=${dto.product_no }" class="btn btn-light">바로 구매하기</a>
            	</c:otherwise>
            </c:choose>
			
        </div>
    </main>
	<c:if test="${not empty errorMsg }">
		<script>
			var userResponse = confirm("${errorMsg}");
			if(userResponse){
				window.location.href = "/loginForm"
			} 
		</script>
	</c:if>
		

<jsp:include page="../front/footer.jsp"></jsp:include>
</body>
</html>