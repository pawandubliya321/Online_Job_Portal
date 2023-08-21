<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit-Profile</title>
<%@include file="All_file/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="All_file/navbar.jsp"%>


	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>

						<c:if test="${not empty succMsg }">
							<div class="alert alert-success" role="alert">${ succMsg}</div>
							<c:remove var="succMsg" />
						</c:if>
						<h5>Add Jobs</h5>
					</div>
					<form action="addPostServlet" method="post">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label><select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected>Choose...</option>
									<option value="Indore">Indore</option>
									<option value="Odisha">Odisha</option>
									<option value="Jharkand">Jharkand</option>
									<option value="Gujrat">Gujrat</option>
									<option value="Bhubaneswar">Bhubaneswar</option>
									<option value="Delhi">Delhi</option>
									<option value="BangLore">BangLore</option>
									<option value="Chennai">Chennai</option>
									<option value="Hydrabad">Hydrabad</option>
									<option value="Pune">Pune</option>
									<option value="Noida">Noida</option>
									<option value="Bhopal">Bhopal</option>
									<option value="gurugram">gurugram</option>
								</select>

							</div>
							<div class="form-group col-md-4">
								<label>Category</label><select name="category"
									class="custom-select" id="inlineFormCustomSelectPref">

									<option selected>Choose...</option>
									<option value="IT">IT</option>
									<option value="Developer">Developer</option>
									<option value="Banking">Banking</option>
									<option value="Engineering">Engineering</option>
									<option value="Teacher">Teacher</option>
									<option value="Management">Management</option>
									<option value="Graphic-Designer">Graphic-Designer</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label><select class="form-control" name="status">
									<option class="active" value="active">Active</option>
									<option class="Inactive" value="Inactive">InActive</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>
						<input type="submit" value="Publish Jobs" /><input type="reset" />
					</form>
				</div>
			</div>
		</div>


	</div>
	<%@include file="All_file/footer.jsp"%>
</body>
</html>