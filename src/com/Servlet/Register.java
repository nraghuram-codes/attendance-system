package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.RegisterBean;
import com.Implementation.Implementation;
import com.Interface.MyInterface;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		//fname,lname,mailid,password,conformpassword,days,months,years,Gender,phoneno,address,userid
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String mailid=request.getParameter("mailid");
		String password=request.getParameter("password");
		String branch=request.getParameter("slct");
		String year=request.getParameter("year");
		String semi=request.getParameter("semi");
		String conformpassword=request.getParameter("conformpassword");
		String days=request.getParameter("days");
		String months=request.getParameter("months");
		String years=request.getParameter("years");
	
		String dob=days+"/"+months+"/"+years;
		String Gender=request.getParameter("Gender");
		String phoneno=request.getParameter("phoneno");
		String address=request.getParameter("address");
		String userid=request.getParameter("userid");
		
		RegisterBean rbean=new RegisterBean();
		
		
		
		rbean.setFname(fname);
		rbean.setLname(lname);
		rbean.setMailid(mailid);
		rbean.setPassword(password);
		rbean.setConformpassword(conformpassword);
		rbean.setDob(dob);
		rbean.setGender(Gender);
		rbean.setPhoneno(phoneno);
		rbean.setAddress(address);
		rbean.setUserid(userid);
		rbean.setBranch(branch);
		rbean.setYear(year);
		rbean.setSemi(semi);
		
		MyInterface in=new Implementation();
		int st=in.registerBean(rbean);
		if(st==1){
			response.sendRedirect("login.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
		
		
	
	}

}
