package com.doctor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modal.Doctor;

/**
 * Servlet implementation class updatestatus
 */
@WebServlet("/updatestatus")
public class updatestatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatestatus() {
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
		
		HttpSession session=request.getSession();
		String Status=request.getParameter("status");
		//Doctor a=(Doctor) session.getAttribute("doctorObj");
		int user_id=(Integer)session.getAttribute("userid");
		//int user_id=Integer.parseInt(request.getParameter("user_id"));
		
		
		
		doctordao dd=new doctordao();
		
		boolean conform=dd.updatestatus(Status, user_id);
		if(conform){
			session.setAttribute("succmsg","comment addred successfully");
			response.sendRedirect("Doctor/showPatient.jsp");
		}else {
			session.setAttribute("errormsg","Somethin went wrong...");
		response.sendRedirect("Admin/showDoctor.jsp");
		}
		
	}

}
