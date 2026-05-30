package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.ApplicationFormBean;
import com.Implementation.Implementation;
import com.Interface.MyInterface;

/**
 * Servlet implementation class ApplicationServlet
 */
@WebServlet("/ApplicationServlet")
public class ApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicationServlet() {
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
		//private String subject,regno,yearofpass1,percentage1,ugreg,yearofpass2,percentage2,greg,yearofpass3,percentage3,course,discipline;
		
		String subject=request.getParameter("subject");
		
		String regno=request.getParameter("regno");
		String yearofpass1=request.getParameter("yearofpass1");
		String percentage1=request.getParameter("percentage1");
		String ugreg=request.getParameter("ugreg");
		String yearofpass2=request.getParameter("yearofpass2");
		String percentage2=request.getParameter("percentage2");
		String greg=request.getParameter("greg");
		String yearofpass3=request.getParameter("yearofpass3");
		String percentage3=request.getParameter("percentage3");
		String course=request.getParameter("course");
		String discipline=request.getParameter("discipline");
		String studentname=request.getParameter("studentname");
		
		ApplicationFormBean ab=new ApplicationFormBean();
		
		
		ab.setSubject(subject);
		ab.setRegno(regno);
		ab.setYearofpass1(yearofpass1);
		ab.setPercentage1(percentage1);
		ab.setUgreg(ugreg);
		ab.setYearofpass2(yearofpass2);
		ab.setPercentage2(percentage2);
		ab.setGreg(greg);
		ab.setYearofpass3(yearofpass3);
		ab.setPercentage3(percentage3);
		ab.setCourse(course);
		ab.setDiscipline(discipline);
		ab.setStudentname(studentname);
		MyInterface in=new Implementation();
		int status=in.applicationform(ab);
		if(status==1){
			response.sendRedirect("Applicationstoredsuccessfully.jsp");
		}else{
			response.sendRedirect("error.jsp");
		}
		
		
		
		
		
		
		
		
		
	}

}
