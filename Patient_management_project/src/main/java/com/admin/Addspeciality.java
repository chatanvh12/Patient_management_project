package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Addspeciality
 */
@WebServlet("/Addspeciality")
public class Addspeciality extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Addspeciality() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String speciality=request.getParameter("speciality");
		
		Admindao ad=new Admindao();
		int f=ad.addSpeciality(speciality);
		
		HttpSession session=request.getSession();
		
		if(f==3){
			session.setAttribute("succmsg", "Specialist Added successfully...");
			response.sendRedirect("Admin/adminHome.jsp");
		}else if(f<0){
			session.setAttribute("errormsg", "Exist in List...");
			response.sendRedirect("Admin/adminHome.jsp");
		}else {
			session.setAttribute("errormsg", "Something went Wrong...");
			response.sendRedirect("Admin/adminHome.jsp");
		}
		
	}

}
