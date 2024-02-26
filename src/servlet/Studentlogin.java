package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Studentregbean;


import Imple.Imple;
import Interface.Inter;

/**
 * Servlet implementation class Patientregservlet
 */
@WebServlet("/Studentlogin")
public class Studentlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Studentlogin() {
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
		HttpSession ses=request.getSession();
		ses.setAttribute("smail", email);
		
		String college=request.getParameter("college");
		System.out.println("college "+college);
		
		String pass=request.getParameter("password");
		System.out.println("Password "+pass);
		
		
		
		
		Studentregbean ur=new Studentregbean();
	
	
		ur.setEmail(email);
		ur.setCollege(college);
		ur.setPass(pass);
		
		
		Inter in=new Imple();
		boolean i=in.Stulog(ur);
		if(i==true){
			response.sendRedirect("Studentmain.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}

		
	}

}
