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
<title>User: single Jobs</title>
<%@include file="All_file/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="All_file/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<%
					int id = Integer.parseInt(request.getParameter("id"));
				jobDao d = new jobDao(DBconnect.getConn());

				Jobs j = d.getJobsById(id);
				%>

				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>

						</div>
						<h6><%=j.getTitle()%></h6>
						<p><%=j.getDescription()%></p>
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

					</div>

				</div>
			</div>




		</div>

	</div>

	</div>

</body>
</html>