package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modal.Appointmentmodal;
import com.modal.userregistermodal;

/**
 * Servlet implementation class Appintment
 */
@WebServlet("/Appintment")
public class Appintment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Appintment() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  HttpSession session=request.getSession();
	  int usid=(Integer) session.getAttribute("userid");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String apdate=request.getParameter("apdate");
		String email=request.getParameter("email");
		String pno=request.getParameter("mobile");
	    String disease=request.getParameter("disease");
	    int doctor_id=Integer.parseInt(request.getParameter("d_id"));
	    String Status="pending";
	    
	    Appointmentmodal am=new Appointmentmodal(usid,name,gender,age,apdate,email,pno,disease,doctor_id,Status);
	    userdao ud=new userdao();
	    boolean a=ud.getappointment(am);
	    if(a) {
	    	session.setAttribute("succmsg","Applied Successfully...");
	    	response.sendRedirect("./Appointment.jsp");
	    }else {
	      	session.setAttribute("errormsg","Something Went Wrong...");
	    	response.sendRedirect("./Appointment.jsp");
	    }
	}

}
