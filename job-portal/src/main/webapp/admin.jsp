<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<%@include file="All_file/all_css.jsp"%>
<style type="text/css">
.back-img {
	background: url("images/pic3.jpg");
	width: 100%;
	height: 90vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="All_file/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-dark p-4">Welcome Admin</h1>
		</div>
	</div>
	<%@include file="All_file/footer.jsp"%>
</body>
</html>