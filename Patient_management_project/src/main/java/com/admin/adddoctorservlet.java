package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modal.Doctor;

/**
 * Servlet implementation class adddoctorservlet
 */
@WebServlet("/adddoctor")
public class adddoctorservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public adddoctorservlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String dob=request.getParameter("dob");
		String qualification=request.getParameter("qualification");
		int specialist=Integer.parseInt(request.getParameter("specialist"));
		String email=request.getParameter("email");
		String mobile_no=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		
		Doctor dr=new Doctor( name,  dob,  qualification,  specialist,  email,  mobile_no, gender,  address);
		
		Admindao ad=new Admindao();
		boolean i=ad.addoctor(dr);
		HttpSession session=request.getSession();
		if(i) {
			session.setAttribute("succmsg", "Added successfully");
			response.sendRedirect("Admin/adddoctors.jsp");
		}
		
	}
}
