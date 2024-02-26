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
@WebServlet("/Adminlogin")
public class Adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminlogin() {
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
		
		
				
		String pass=request.getParameter("pass");
		System.out.println("Password "+pass);
		
		
			
		
		
		if(email.equals("Admin@gmail.com")&&pass.equals("admin")){
			response.sendRedirect("Adminmain.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}

		
	}

}
