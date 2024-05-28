<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 대시보드</title>
<link rel="stylesheet" href="../css/header_footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="../js/sidebar.js"></script>
</head>
<body onclick="closeSidebar(event)">
	<jsp:include page="../front/header.jsp"></jsp:include>
	<jsp:include page="../front/sidebar.jsp"></jsp:include>
    <main>
        <div class="container">
            <a href="/admin/regProductForm">상품 등록하기</a>
            <a href="/admin/getProductList">상품 목록보기</a>
        </div>
    </main>
	<jsp:include page="../front/footer.jsp"></jsp:include>
</body>
</html>