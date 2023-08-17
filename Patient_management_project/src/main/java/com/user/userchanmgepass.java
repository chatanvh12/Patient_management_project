package com.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class userchanmgepass
 */
@WebServlet("/userchanmgepass")
public class userchanmgepass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userchanmgepass() {
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
		int userid=(Integer)session.getAttribute("userid");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		userdao ud=new userdao();
		boolean a=ud.updateuserpass(email, pass);
		if(a) {
			session.setAttribute("succmsg","Updated Successfully..");
			response.sendRedirect("./updateuserpass.jsp");
		}else {
			session.setAttribute("errormsg","Updated Successfully..");
			response.sendRedirect("./updateuserpass.jsp");
		}
		
	}

}
