package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Studentregbean;
import Bean.collegemanageregbean;


import Imple.Imple;
import Interface.Inter;

/**
 * Servlet implementation class Patientregservlet
 */
@WebServlet("/collegemanagereg")
public class collegemanagereg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public collegemanagereg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		
		
		String email=request.getParameter("email");
		System.out.println("Email "+email);
		
		String phno=request.getParameter("phone");
		System.out.println("Phoneno "+phno);
		
		String college=request.getParameter("college");
		System.out.println("college "+college);
		

		String caddress=request.getParameter("caddress");
		System.out.println("caddress "+caddress);
		
		String pass=request.getParameter("password1");
		System.out.println("Password "+pass);
		
		String cpass=request.getParameter("password2");
		System.out.println("Password "+cpass);
		
		
		
		collegemanageregbean ur=new collegemanageregbean();
	
		ur.setCaddress(caddress);
		ur.setPhone(phno);
		ur.setEmail(email);
		ur.setCname(college);
		ur.setPass(pass);
		ur.setCpass(cpass);
	
		
		Inter in=new Imple();
		int i=in.colmanreg(ur);
		if(i==1){
			response.sendRedirect("collegemanagelog.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}

		
	}

}
