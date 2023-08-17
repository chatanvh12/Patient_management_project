package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeleteDoctor
 */
@WebServlet("/DeleteDoctor")
public class DeleteDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDoctor() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     HttpSession session=request.getSession();
    int id=(Integer)session.getAttribute("deleteid");
      
    Admindao ad=new Admindao();
    boolean a=ad.deleteDoctor(id);
    if(a) {
    	session.setAttribute("succmsg", "Deleted successfully...");
    	response.sendRedirect("Admin/showDoctor.jsp");
    }
    else {
    	session.setAttribute("errormsg", "Deleted successfully...");
    	response.sendRedirect("Admin/showDoctor.jsp");	
    }
	}

}
