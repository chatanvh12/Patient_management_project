package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modal.userregistermodal;

/**
 * Servlet implementation class adminservlet
 */
@WebServlet("/adminservlet")
public class adminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public adminservlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		HttpSession session=request.getSession();
		
		if("admin@gmail.com".equals(email) && "admin".equals(pass)) {
			session.setAttribute("AdminObj",new userregistermodal());
			response.sendRedirect("Admin/adminHome.jsp");
		}
		else {
			session.setAttribute("errormsg","invalid password or username...");
			response.sendRedirect("./Adminlogin.jsp");
		}
	}

}
