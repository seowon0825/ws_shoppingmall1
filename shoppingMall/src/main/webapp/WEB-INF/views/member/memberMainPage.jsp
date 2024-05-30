<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member MainPage</title>
<link rel="stylesheet" href="../css/header_footer.css">
<link rel="stylesheet" href="../css/productList.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="../js/sidebar.js"></script>
</head>
<body onclick="closeSidebar(event)">
	<jsp:include page="../front/header.jsp"></jsp:include>
	<jsp:include page="../front/sidebar.jsp"></jsp:include>
    <main>
        <div class="container">
            <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="https://autumnshop.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/1325657cb6ec06f6eee0ed5677242222.jpg" class="d-block w-100" alt="...">
                  </div>
                </div>
              </div>
              <br>
              <h5>판매중인 상품</h5>
              <div class="products-grid">
                <c:forEach var="list" items="${productList}">
                <div class="product">
                    <a href="/memberProductDetail?product_no=${list.product_no}"><img src="${list.imgurl}"></a>
                    <div><a href="/memberProductDetail?product_no=${list.product_no}"">${list.product_name}</a></div>
                    <div>${list.product_price}원</div>
                </div>
                </c:forEach>
            </div>
        </div>
    </main>
    
	<jsp:include page="../front/footer.jsp"></jsp:include>
</body>
</html>