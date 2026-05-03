package com.Servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.PaymentBean;
import com.Implementation.Implementation;
import com.Interface.MyInterface;

/**
 * Servlet implementation class StudentPayment
 */
@WebServlet("/StudentPayment")
public class StudentPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentPayment() {
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
		
		
		
		//	private String stname,mobileno,bank,accno,amount,pincode,address,city,state,country,selectcollegesnames;
		
		
		
		String stname=request.getParameter("stname");
		String mobileno=request.getParameter("mobileno");
		String bank=request.getParameter("bank");
		String accno=request.getParameter("accno");
		String amount=request.getParameter("amount");
		String pincode=request.getParameter("pincode");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String country=request.getParameter("country");
		String selectcollegesnames=request.getParameter("selectcollegesnames");
		String branch=request.getParameter("branch");
		
		PaymentBean pb=new PaymentBean();
		pb.setStname(stname);
		pb.setMobileno(mobileno);
		pb.setBank(bank);
		pb.setAccno(accno);
		pb.setAmount(amount);
		pb.setPincode(pincode);
		pb.setAddress(address);
		pb.setCity(city);
		pb.setState(state);
		pb.setCountry(country);
		pb.setSelectcollegesnames(selectcollegesnames);
		pb.setBranch(branch);
		
		MyInterface in=new Implementation();
		int status=in.studentpayment(pb);
		if(status==1){
			response.sendRedirect("Paymentsentsuccessfully.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
		
		
		
		
	}

}
