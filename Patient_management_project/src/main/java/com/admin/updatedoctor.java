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
 * Servlet implementation class updatedoctor
 */
@WebServlet("/updatedoctor")
public class updatedoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatedoctor() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		int is=(Integer)session.getAttribute("id");
		String name=request.getParameter("name");
		String mobile_no=request.getParameter("mobile");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
	 Doctor dr=new Doctor( name,  email,  mobile_no,  address);
	 System.out.println(is+name+ mobile_no+ email+ address);
	 
	 Admindao ad=new Admindao();
	 boolean a=ad.updatedoctor(dr, is);
	 if(a) {
		 session.setAttribute("succmsg","Update Successfully...");
		 response.sendRedirect("Admin/EditDoctor.jsp");
	 }
	 else {
		 session.setAttribute("errormsg","something went wrong...");
		 response.sendRedirect("Admin/EditDoctor.jsp");
	 }
	 }

}
