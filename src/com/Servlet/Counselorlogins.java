package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Counselorlogins
 */
@WebServlet("/Counselorlogins")
public class Counselorlogins extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Counselorlogins() {
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
		String name1=request.getParameter("name");
		String password1=request.getParameter("password");
		
		
		System.out.println("name1:"+name1);
		System.out.println("password1:"+password1);
		if(name1.equals("counselor") &&  password1.equals("counselor")){
			response.sendRedirect("counselorhome.jsp");
			
		}
		
		else{
			response.sendRedirect("error.jsp");
		}
	}

}