<%@page import="com.db.DBconnect"%>
<%@page import="com.doa.jobDao"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.List"%>
<%@page import="com.entry.Jobs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User page</title>
<%@include file="All_file/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="All_file/navbar.jsp"%>`
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Jobs</h5>
				<c:if test="${not empty succMsg }">
					<h4 class="text-center text-danger">${succMsg }</h4>
					<c:remove var="succMsg" />
				</c:if>

				<div class="card">
					<div class="card-body">
						<form class="form-inline" action="more_view.jsp" method="get">
							<div class="form-group col-md-5 mt-1">
								
							</div>
							<div class="form-group col-md-4 mt-1">
							
							</div>
							<div class="form-group col-md-5">
								<label><h4><b>Location</b></h4></label><select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option value="lo" selected>Choose...</option>
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
								<label><h4><b>Category</b></h4></label><select name="category"
									class="custom-select" id="inlineFormCustomSelectPref">

									<option value="ca" selected>choose....</option>
									<option value="IT">IT</option>
									<option value="Developer">Developer</option>
									<option value="Banking">Banking</option>
									<option value="Engineering">Engineering</option>
									<option value="Teacher">Teacher</option>
									<option value="Management">Management</option>
									<option value="Graphic-Designer">Graphic-Designer</option>
								</select>
							</div>
							
							<button class="btn btn-success">Submit</button>


						</form>

					</div>
				</div>

				<%
					jobDao d = new jobDao(DBconnect.getConn());

				List<Jobs> list = d.getAllJobsForUser();
				for (Jobs j : list) {
				%>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>

						</div>
						<h6><%=j.getTitle()%></h6>
						<%
							if (j.getDescription().length() > 0 && j.getDescription().length() < 120) {
						%>
						<p><%=j.getDescription()%>
						</p>
						<%
							} else {
						%>
						<P><%=j.getDescription().substring(0, 120)%>...
						</P>
						<%
							}
						%>
						<br>
						<div class="row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="location: <%=j.getLocation()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="category: <%=j.getCategory()%>" readonly>
							</div>


						</div>
						<h6>
							Publish Date:
							<%=j.getPdate().toString()%></h6>
						<div class="text-center">
							<a href="one_view.jsp?id=<%=j.getId()%>"
								class="btn btn-sm bg-success text-white">View More</a>
						</div>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
</body>
</html>