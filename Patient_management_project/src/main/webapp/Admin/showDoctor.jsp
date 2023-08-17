<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.admin.*"%>
<%@ page import="com.modal.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../component/allCss.jsp"%>
<title>Add Doctor</title>
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
	<%@ include file="navbar.jsp"%>
	<c:if test="${empty AdminObj }">
		<c:redirect url="../Adminlogin.jsp"></c:redirect>
	</c:if>
<div class="col-md-12 m-0">
					<div class="card shadow">
						<div class="card-body">
							<p class="h4 text-center">Doctor Details</p>
							
						
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
										<th scope="col">Doctor Name</th>
										<th scope="col">D.O.B</th>
										<th scope="col">Qualification</th>
										<th scope="col">Specialist</th>
										<th scope="col">Gender</th>
										<th scope="col">Email Id</th>
										<th scope="col">Mobile No.</th>
										<th scope="col">Address</th>
										<th scope="col">Action</th>
									</tr>
								</thead>
								<tbody>
                                   <%
									Admindao ad = new Admindao();
                                        specialist s=new specialist();
										List<Doctor> list1 = ad.getdoctor();
										
										for (Doctor d : list1) {
									%>
									<tr>
									   <td scope="col"><%=d.getId()%></td>
									   <td scope="col"><%=d.getName() %></td>
									   <td scope="col"><%=d.getDob() %></td>
									   <td scope="col"><%=d.getQualification() %></td>
									   <td scope="col"><%=d.getSpecialist_name() %></td>
									   <td scope="col"><%=d.getGender()%></td>
									   <td scope="col"><%=d.getEmail() %></td>
									   <td scope="col"><%=d.getMobile_no() %></td>
									   <td scope="col"><%=d.getAddress() %></td>
									   <th scope="col"><a class="text-warning" href="EditDoctor.jsp?id=<%session.setAttribute("id",d.getId());%>"><i class="fa-solid fa-user-pen"> </i></a><span> | </span><a class="text-danger" href="../DeleteDoctor?id=<%session.setAttribute("deleteid",d.getId());%>"> <i class="fa-solid fa-trash-can"></i></a></th>
									</tr>
									<%} %>
								</tbody>
							</table>
						</div>
					</div>
				</div>
</body>
</html>