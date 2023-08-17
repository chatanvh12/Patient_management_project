package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modal.userregistermodal;

@WebServlet("/userlogin")
public class userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public userlogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String user=request.getParameter("user");
	 String pass=request.getParameter("pass");
	 
	 HttpSession session=request.getSession();
	 
	 userdao ud=new userdao();
	 userregistermodal us=ud.conform(user,pass);
	 if(us!=null){
		 session.setAttribute("userObj",us);
		 session.setAttribute("userid",us.getId());
		 response.sendRedirect("./userHome.jsp");
	 }
	 else{
		 session.setAttribute("errormsg","user or password is wrong...");
		 response.sendRedirect("./Userlogin.jsp");
	 }
	}

}
