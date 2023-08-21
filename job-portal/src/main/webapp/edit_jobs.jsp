<%@page import="com.db.DBconnect"%>
<%@page import="com.doa.jobDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.entry.Jobs"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Job</title>
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

						<%
							int id = Integer.parseInt(request.getParameter("id"));
						jobDao d = new jobDao(DBconnect.getConn());
						Jobs j = d.getJobsById(id);
						%>
						<h5>edit Jobs</h5>
					</div>
					<form action="UpdateJobServlet" method="post">
					
					<input type="hidden" value="<%=j.getId() %>" name="id">
						<div class="form-group">
							<label>Enter Title</label> <input type="text" name="title"
								required class="form-control" value="<%=j.getTitle()%>">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label><select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option value="<%=j.getLocation()%>"><%=j.getLocation()%></option>
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
								</select>

							</div>
							<div class="form-group col-md-4">
								<label>Category</label><select name="category"
									class="custom-select" id="inlineFormCustomSelectPref">

									<option value="<%=j.getCategory()%>"><%=j.getCategory()%></option>
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
									<option class="active" value="<%=j.getStatus()%>"><%=j.getStatus()%></option>
									<option class="active" value="active">Active</option>
									<option class="Inactive" value="Inactive">InActive</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"><%=j.getDescription()%></textarea>
						</div>
						<input type="submit" value="Update Jobs" />
					</form>
				</div>
			</div>
		</div>


	</div>
	<%@include file="All_file/footer.jsp"%>
</body>
</html>