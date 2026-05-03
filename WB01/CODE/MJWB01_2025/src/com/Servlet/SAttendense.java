package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.SAttendence;
import com.Implementation.Implementation;
import com.Interface.MyInterface;

/**
 * Servlet implementation class SAttendense
 */
@WebServlet("/SAttendense")
public class SAttendense extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SAttendense() {
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
		
		String report=null;
		
		//private String  sname,branch,year,sem,userid,month,present,workdays;
		
		String  sname=request.getParameter("sname");
		String  branch=request.getParameter("branch");
		String  year=request.getParameter("year");
		String  sem=request.getParameter("sem");
		String  userid=request.getParameter("userid");
		String  month=request.getParameter("month");
		String  present=request.getParameter("present");
		String  workdays=request.getParameter("workdays");
		
		double pre=Double.parseDouble(present);
		System.out.println("present="+pre);
		
		double work=Double.parseDouble(workdays);
		System.out.println("WORKING DAYS="+work);
		
		double per= pre/work;
		System.out.println("per="+per);
		
		double percentage=per*100;
		System.out.println("percentage="+percentage);
		
		if(percentage<60)
		{
		     report="BAD";
		}
		
		else if(percentage>60 && percentage<70)
		{
			 report="AVERAGE";
		}
		
		else if(percentage>70 && percentage<80)
		{
			 report="GOOD";
		}
		
		else
		{
			 report="EXCELLENT";
		}
		
		
		SAttendence sa=new SAttendence();
		sa.setSname(sname);
		sa.setBranch(branch);
		sa.setYear(year);
		sa.setSem(sem);
		sa.setUserid(userid);
		sa.setMonth(month);
		sa.setPresent(present);
		sa.setWorkdays(workdays);
		sa.setPercentage(percentage);
		sa.setReport(report);
		MyInterface i=new Implementation();
		int status=i.attendence(sa);
		if(status==1){
			response.sendRedirect("success.jsp");
			
		}else{
			response.sendRedirect("failed.jsp");
		}
		
	}

}
