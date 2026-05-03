package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.AddFacultyDetailsBean;
import com.Implementation.Implementation;
import com.Interface.MyInterface;

/**
 * Servlet implementation class AdminAddFacultyDetails
 */
@WebServlet("/AdminAddFacultyDetails")
public class AdminAddFacultyDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddFacultyDetails() {
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
		
		//private String nameoffaculty,educationalqualification,designation,slno;universityname,collegename
		
		
		String nameoffaculty=request.getParameter("nameoffaculty");
		String educationalqualification=request.getParameter("educationalqualification");
		String designation=request.getParameter("designation");
		
		
		String universityname=request.getParameter("universityname");
		String collegename=request.getParameter("collegename");
		
		String branch=request.getParameter("branch");
		
		
		System.out.println("getting");
		System.out.println("nameoffaculty:"+nameoffaculty);
		System.out.println("educationalqualification:"+educationalqualification);
		
		System.out.println("designation:"+designation);
		AddFacultyDetailsBean adb=new AddFacultyDetailsBean();
		
		adb.setNameoffaculty(nameoffaculty);
		adb.setEducationalqualification(educationalqualification);
		adb.setDesignation(designation);
		adb.setUniversityname(universityname);
		adb.setCollegename(collegename);
		adb.setBranch(branch);
		System.out.println("bean");
		System.out.println("nameoffaculty:"+nameoffaculty);
		System.out.println("educationalqualification:"+educationalqualification);
		
		System.out.println("designation:"+designation);
		
		MyInterface in=new Implementation();
		int status=in.facultyDetails(adb);
		
		System.out.println("interface:");
		System.out.println("nameoffaculty:"+nameoffaculty);
		System.out.println("educationalqualification:"+educationalqualification);
		
		System.out.println("designation:"+designation);
		if(status==1){
			response.sendRedirect("faculty-details-stored-successfully.jsp");
			
			
			
			System.out.println("if status");
			System.out.println("nameoffaculty:"+nameoffaculty);
			System.out.println("educationalqualification:"+educationalqualification);
			
			System.out.println("designation:"+designation);
		}
		
		else{
			response.sendRedirect("error.jsp");
		}
		
		
		
		
	}

}
