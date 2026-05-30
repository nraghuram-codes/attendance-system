package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.JntuPlacementBean;
import com.Implementation.Implementation;
import com.Interface.MyInterface;

/**
 * Servlet implementation class AdminAddJntuPlacementDetails
 */
@WebServlet("/AdminAddJntuPlacementDetails")
public class AdminAddJntuPlacementDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddJntuPlacementDetails() {
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
		//private String universityname,collegename,branchname,students_passedout,students_placed,companyname,salpackage,location;sno
		
		String universityname=request.getParameter("universityname");
		String collegename=request.getParameter("collegename");
		String branchname=request.getParameter("branchname");
		String students_passedout=request.getParameter("students_passedout");
		String students_placed=request.getParameter("students_placed");
		String companyname=request.getParameter("companyname");
		String salpackage=request.getParameter("salpackage");
		String location=request.getParameter("location");
		
		JntuPlacementBean jb=new JntuPlacementBean();
		
		jb.setUniversityname(universityname);
		jb.setCollegename(collegename);
		jb.setBranchname(branchname);
		jb.setStudents_passedout(students_passedout);
		jb.setStudents_placed(students_placed);
		jb.setCompanyname(companyname);
		jb.setSalpackage(salpackage);
		jb.setLocation(location);
		
		MyInterface in= new Implementation();
		int status=in.jntuPlacementDetails(jb);
		if(status==1){
			response.sendRedirect("jntu-placement-details-stored.jsp");
		}
		
		else{
			response.sendRedirect("error.jsp");
		}
		
		
		
	}

}
