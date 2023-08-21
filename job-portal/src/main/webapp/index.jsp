<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="All_file/all_css.jsp"%>

<style>
.back-img {
	background: url("images/8619.jpg");
	width: 100%;
	height: 85vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="All_file/navbar.jsp"%>
	

	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-dark p-4">
				<i class="fa fa-book" aria-hidden="true"></i>Online Job Portal
			</h1>
		</div>
	</div>
	<%@include file="All_file/footer.jsp"%>
</body>
</html>