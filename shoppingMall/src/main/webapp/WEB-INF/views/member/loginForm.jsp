<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
<link rel="stylesheet" href="../css/header_footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="../js/sidebar.js"></script>
</head>
<body onclick="closeSidebar(event)">
	<jsp:include page="../front/header.jsp"></jsp:include>
	<jsp:include page="../front/sidebar.jsp"></jsp:include>
	<main>
        <div class="container">
        <h1 class="pageTitle">Login</h1>
	        <form action="/login" method="post">
	       	<table class="centered-table">
		       	<tr>
		       		<th>아이디</th>
		       		<td>
						<input type="text"	class="form-control" name="mem_username" placeholder="id">
		       		</td>
		       	</tr>
		       	<tr>
		       		<th>비밀번호</th>
		       		
		       		<td><input type="text"	class="form-control" name="mem_pw" placeholder="pw"></td>
		       	</tr>
		       	<tr>
		       		<th></th>
		       		<td><input type="submit" class="btn btn-light" value="login"></td>
		       	</tr>
	        </table>
	        </form>
        </div>
        <c:if test="${not empty errorMessage }">
        	<script>
        		alert("${errorMessage}");
        	</script>
        </c:if>	
    </main>
	<jsp:include page="../front/footer.jsp"></jsp:include>
</body>
</html>