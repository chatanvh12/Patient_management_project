<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.user.*"%>
<%@ page import="com.modal.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Old Appointment</title>
<%@ include file="../component/allCss.jsp"%>
<style>
.navbar-expand-lg .navbar-collapse {
	display: -webkit-box !important;
	display: -ms-flexbox !important;
	display: flex !important;
	-ms-flex-preferred-size: auto;
	flex-basis: auto;
	justify-content: right;
}

.shadow {
	box-shadow: 2px 4px 8px 0 rgba(0, 0, 0, 0.2), 2px 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

.length {
	text-align: center;
	font-size: xxx-large;
}
</style>
</head>
<body>
	<%@ include file="component/navbar.jsp"%>
		<c:if test="${empty userObj }">
		<c:redirect url="Userlogin.jsp"></c:redirect>
	</c:if>
<div class="col-md-12 m-0">
					<div class="card shadow">
						<div class="card-body">
							<p class="h4 text-center">Appointment's Details</p>
							
						
							<c:if test="${not empty succmsg }">
								<p class="text-center text-success h5">${succmsg}</p>
								<c:remove var="succmsg" scope="session" />
								<!-- % session.removeAttribute("succmsg"); %-->
							</c:if>
							<c:if test="${not empty errormsg }">
								<p class="text-center text-danger h5">${errormsg}</p>
								<c:remove var="errormsg" scope="session" />
							</c:if>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">ID</th>
										<th scope="col">Patient Name</th>
										<th scope="col">Gender</th>
										<th scope="col">Age</th>
										<th scope="col">Appoi. Date</th>
										<th scope="col">Email Id</th>
										<th scope="col">Mobile No.</th>
										<th scope="col">Disease</th>
										<th scope="col">Comment</th>
									</tr>
								</thead>
								<tbody>
                                   <%
                                   int userid=(Integer)session.getAttribute("userid");
									userdao ad = new userdao();
										List<Appointmentmodal> list1 = ad.getappointmentbyid(userid);
										
										for (Appointmentmodal d : list1) {
									%>
									<tr>
									   <td scope="col"><%=d.getId()%></td>
									   <td scope="col"><%=d.getName() %></td>
									   <td scope="col"><%=d.getGender() %></td>
									   <td scope="col"><%=d.getAge() %></td>
									   <td scope="col"><%=d.getApdate() %></td>
									   <td scope="col"><%=d.getEmail() %></td>
									   <td scope="col"><%=d.getPno() %></td>
									   <td scope="col"><%=d.getDisease() %></td>
									   <td scope="col"><%=d.getStatus() %></td>
									</tr>
									<%} %>
								</tbody>
							</table>
						</div>
					</div>
				</div>
</body>
</html>