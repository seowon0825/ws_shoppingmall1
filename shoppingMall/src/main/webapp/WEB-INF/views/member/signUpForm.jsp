<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp Form</title>
<link rel="stylesheet" href="../css/header_footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="../js/sidebar.js"></script>
</head>
<body onclick="closeSidebar(event)">
<jsp:include page="../front/header.jsp"></jsp:include>
<jsp:include page="../front/sidebar.jsp"></jsp:include>
<main>
  <div class="container">
  <h1 class="pageTitle">Sign Up</h1>
  	<form action="/signUp" method="post">
		<table class="centered-table">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="mem_username"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="mem_pw"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="mem_name"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="tel" name="mem_tel"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td>
					<input type="text" name="mem_addr">
					<input type="hidden" name="role" value="ROLE_MEMBER">
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<input type="submit" class="btn btn-light" value="가입하기">
				</td>
			</tr>
		</table>
  	</form>
  </div>
  </div>
</main>
<jsp:include page="../front/footer.jsp"></jsp:include>
</body>
</html>