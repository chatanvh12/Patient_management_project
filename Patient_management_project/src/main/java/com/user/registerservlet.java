package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.admin.Admindao;
import com.modal.userregistermodal;

/**
 * Servlet implementation class registerservlet
 */
@WebServlet("/registerservlet")
public class registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public registerservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String Name=request.getParameter("name");
	String contact_no=request.getParameter("contact");
	String email=request.getParameter("email");
	String dob=request.getParameter("dob");
	String address=request.getParameter("address");
	String address2=request.getParameter("address2");
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	int pin=Integer.parseInt(request.getParameter("pin"));
	String password=request.getParameter("pass");
	String conformpass=request.getParameter("pass2");
	
	if(password.equals(conformpass)) {
	
		HttpSession session=request.getSession();
		
	userregistermodal um=new userregistermodal(Name, contact_no, email, dob, address, address2, city, state, pin, conformpass);
	   Admindao ad=new Admindao();
	  if(ad.register(um)>0) {
		  session.setAttribute("succmsg","user registered Successfully...");
		  response.sendRedirect("./Userlogin.jsp");
		  System.out.println("done");
	  }
	  else if(ad.register(um)==-2) {
		  session.setAttribute("errormsg","You Already have accoount...");
		  response.sendRedirect("./Userlogin.jsp");
	  }
	  else {
		  session.setAttribute("errormsg","something went wrong...");
		  response.sendRedirect("./Userlogin.jsp");
	  }
	}
  }
}
