package com.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Srinivasacollegerating
 */
@WebServlet("/Srinivasacollegerating")
public class Srinivasacollegerating extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Srinivasacollegerating() {
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
		String name=request.getParameter("name");
		String collegename=request.getParameter("collegename");
		String review = request.getParameter("review");
		String rating =request.getParameter("rating");
		
		
		
		System.out.println("Name NNNN "+name);
		System.out.println("Review RRRR "+review);
		System.out.println("Rating RTTTT "+rating);
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con;
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegesystem","root","root");
			String sql = "INSERT INTO collegesystem.jntuclgrating VALUES(?,?,?,?)";
			
			
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, review);
			ps.setString(3, rating);
			ps.setString(4, collegename);


			int result=ps.executeUpdate(); 
			if(result==1){
				response.sendRedirect("showratingofsist.jsp");
				
				
				
			}else{
				response.sendRedirect("error.jsp");
			}
			
			System.err.println("result of insertion "+result);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		
		}

	}
