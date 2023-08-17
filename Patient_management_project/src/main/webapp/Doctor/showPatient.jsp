<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.doctor.*"%>
<%@ page import="com.modal.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<%@ include file="navbar.jsp"%>
	<c:if test="${empty DoctorObj }">
		<c:redirect url="../lDoctorogin.jsp"></c:redirect>
	</c:if>

	<%
	int user_id=0;
	Appointmentmodal pw=null;
	%>
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
							<th scope="col">Mobile No.</th>
							<th scope="col">Disease</th>
							<th scope="col">State</th>
							<th scope="col">Comment</th>
						</tr>
					</thead>
					<tbody>
						<%
                                   int doctor_id=(Integer)session.getAttribute("doctor_id");
                                   doctordao ad = new doctordao();
                                   List<Appointmentmodal> list1 = ad.getappointmentbyid(doctor_id);
										//HttpSession session1=request.getSession(true);
										for (Appointmentmodal d : list1) {
											pw=d;
											 user_id=d.getUserid();
											session.setAttribute("userid",user_id);
										
									 %>
						<tr>

							<td scope="col"><%=d.getId()%></td>
							<td scope="col"><%=d.getName() %></td>
							<td scope="col"><%=d.getGender()%></td>
							<td scope="col"><%=d.getAge() %></td>
							<td scope="col"><%=d.getApdate() %></td>
							<td scope="col"><%=d.getPno() %></td>
							<td scope="col"><%=d.getDisease() %></td>
							<td scope="col"><%=d.getStatus() %></td>
							<%
							if((d.getStatus()).equals("pending")){
							%>
							<td scope="col"><button class="btn btn-success"
									data-toggle="modal" data-target="#exampleModal">
									</a>Comment
								</button></td>
							<%}else{ %>
							<td scope="col"><button class="btn btn-success"
									data-toggle="modal" data-target="#exampleModal" disabled>
									</a>Comment
								</button></td>
						</tr>
						<%}
						}%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Comment</h5>
				</div>
				<div class="modal-body">
					<form action="../updatestatus" method="post">
						<div class="form-group">
							<input class="form-control" type="text" placeholder="Add Comment"
								name="status" required>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-success">ADD</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
</body>
</html>