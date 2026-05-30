package com.Servlet;

import java.io.IOException;






import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.AddcoursedetailsBean;
import com.Implementation.Implementation;
import com.Interface.MyInterface;

/**
 * Servlet implementation class Addcoursedetails
 */
@WebServlet("/Addcoursedetails")
public class Addcoursedetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addcoursedetails() {
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
		//private String collegename,course,branch,noofseats,bcreservstion,screservation;
		String collegename=request.getParameter("collegename");
		String course=request.getParameter("course");
		String branch=request.getParameter("branch");
		String noofseats=request.getParameter("noofseats");
		String bcreservstion=request.getParameter("bcreservstion");
		String screservation=request.getParameter("screservation");
		AddcoursedetailsBean ac=new AddcoursedetailsBean();
		
		ac.setCollegename(collegename);
		ac.setCourse(course);
		ac.setBranch(branch);
		ac.setNoofseats(noofseats);
		ac.setBcreservstion(bcreservstion);
		ac.setScreservation(screservation);
		MyInterface in=new Implementation();
		int status=in.addcoursedetails(ac);
		if(status==1){
			response.sendRedirect("addcoursedatailsadmin.jsp");
			HttpSession session=request.getSession();
			session.setAttribute("collegename", collegename);
			
			
		}else{
			response.sendRedirect("error.jsp");
		}
	}

}
