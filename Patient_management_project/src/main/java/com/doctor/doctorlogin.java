package com.doctor;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modal.Doctor;

/**
 * Servlet implementation class doctorlogin
 */
@WebServlet("/doctorlogin")
public class doctorlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public doctorlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("user");
		String pass=request.getParameter("pass");
		
		HttpSession session=request.getSession();
		System.out.println(user);
		System.out.println(pass);
		
		doctordao dd=new doctordao();
		Doctor a=dd.logindoctor(user,pass);
		
		if(a!=null) {
			session.setAttribute("DoctorObj", a);
			session.setAttribute("doctor_id",a.getId());
			response.sendRedirect("Doctor/doctorHome.jsp");
			
		}
		else {
			session.setAttribute("errormsg", "Account Not Found");
			response.sendRedirect("Doctorlogin.jsp");

		}
	}

}
