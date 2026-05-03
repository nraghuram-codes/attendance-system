package com.Servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Addclgbean;
import com.Implementation.Implementation;
import com.Interface.MyInterface;

/**
 * Servlet implementation class AddCollege
 */
@WebServlet("/AddCollege")
public class AddCollege extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCollege() {
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
		//	private String collegename,city,university,state,country;
		
	
		String collegename=request.getParameter("collegename");
		String city=request.getParameter("city");
		String university=request.getParameter("university");
		String state=request.getParameter("state");
		String country=request.getParameter("country");
		Addclgbean ab=new Addclgbean();
		ab.setCollegename(collegename);
		System.out.println("collegename:"+collegename);
		ab.setCity(city);
		System.out.println("city:"+city);
		ab.setUniversity(university);
		System.out.println("university:"+university);
		ab.setState(state);
		System.out.println("state:"+state);
		ab.setCountry(country);
		System.out.println("country:"+country);
		MyInterface in=new Implementation();
		int status=in.addcollege(ab);
		System.out.println(status);
		if(status==1){
			response.sendRedirect("addcollegesSucces.jsp");
		}else{
			response.sendRedirect("error.jsp");
		}

}}
