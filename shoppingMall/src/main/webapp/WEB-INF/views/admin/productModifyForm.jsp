<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 모드 - 상품수정</title>
<link rel="stylesheet" href="../css/header_footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="../js/sidebar.js"></script>
</head>
<body onclick="closeSidebar(event)">
	<jsp:include page="../front/header.jsp"></jsp:include>
	<jsp:include page="../front/sidebar.jsp"></jsp:include>
    <main>
        <div class="container">
        	<h1 class="pageTitle">상품 등록</h1>
        	<form action="/admin/productModify" method="post">
        		<table class="centered-table">
        			<tr>
        				<td>상품 이름 :&nbsp;</td>
        				<td><input type="text" class="form-control" name="product_name" placeholder="상품 이름" value="${dto.product_name}"></td>
        			</tr>
        			<tr>
        				<td>상품 가격 :&nbsp;</td>
        				<td><input type="number" class="form-control" name="product_price" placeholder="상품 가격" value="${dto.product_price}"></td>
        			</tr>
        			<tr>
        				<td>상품 설명 :&nbsp;</td>
        				<td><textarea class="form-control" name="product_info" >${dto.product_info}</textarea></td>
        			</tr>
        			<tr>
        				<td>상품 이미지 :&nbsp;</td>
        				<td>
        					<input type="url" class="form-control" name="imgurl" value="${dto.imgurl}">
        					<input type="hidden" class="form-control" name="originalImgurl" value="${dto.imgurl}">
        				</td>
        			</tr>
        			<tr>
        				<td>상품 재고 :&nbsp;</td>
        				<td><input type="number" class="form-control" name="product_inventory" placeholder="상품 재고" value="${dto.product_inventory}"></td>
        			</tr>
        			<tr>
        				<td>상품 첫 입고일자 :&nbsp;</td>
        				<td><input type="date" class="form-control" name="product_warehousinng" value="${dto.product_warehousinng}"></td>
        			</tr>
        			<tr>
        				<td><input type="hidden" name="product_no" value="${dto.product_no }"></td>
        				<td><input type="submit" class="btn btn-light" value="상품 수정하기"></td>
        			</tr>
        		</table>
        	</form>
           
        </div>
    </main>
	<jsp:include page="../front/footer.jsp"></jsp:include>
</body>
</html>