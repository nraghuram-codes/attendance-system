package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.IssuHallticketsBean;
import com.Implementation.Implementation;
import com.Interface.MyInterface;

/**
 * Servlet implementation class StudentHallticketsissue
 */
@WebServlet("/StudentHallticketsissue")
public class StudentHallticketsissue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentHallticketsissue() {
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
		
		
		////stuname,branch,clgname,universityname,hallticketno
		String stuname=request.getParameter("stuname");
		String branch=request.getParameter("branch");
		String clgname=request.getParameter("clgname");
		String universityname=request.getParameter("universityname");
		String hallticketno=request.getParameter("hallticketno");
		HttpSession session=request.getSession();
		session.setAttribute("stuname", stuname);
		session.setAttribute("branch", branch);
		session.setAttribute("clgname", clgname);
		session.setAttribute("universityname", universityname);
		session.setAttribute("hallticketno", hallticketno);
		
		
		IssuHallticketsBean ib=new IssuHallticketsBean();
		ib.setStuname(stuname);
		ib.setBranch(branch);
		ib.setClgname(clgname);
		ib.setUniversityname(universityname);
		ib.setHallticketno(hallticketno);
	
		MyInterface in=new Implementation();
		int status=in.issuehallticket(ib);
		if(status==1){
			response.sendRedirect("givenhallticket.jsp");
			
			
			
		
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
	}

}
