package com.Servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Addclgbean;
import com.Bean.Beandoc;
import com.Implementation.Implementation;
import com.Interface.MyInterface;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

/**
 * Servlet implementation class Rectifyingerror
 */
@WebServlet("/Rectifyingerror")
public class Rectifyingerror extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Rectifyingerror() {
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
	/*	//	String collegename,name,city,rank,university,state,country,path;
		String deptname=request.getParameter("deptname");
		String collegename=request.getParameter("collegename");
		System.out.println("deptname:"+deptname);
		System.out.println("collegename:"+collegename);*/
		Part part = null;
		FilePart filePart = null;
		ParamPart paramPart = null;
		String type = null;
		double fileSize=0.0;
		String filename =null;
		String tagValue =null;
		String branchname=null;
		//String items=null;
		String filecontent="";
		String collegename=null;
		String university=null;
				
		String country1=null;
		ArrayList<String> paramValues = new ArrayList<String>();

		
		MultipartParser mpp=new MultipartParser(request, 999999999);

		String realpath=getServletContext().getRealPath("/");
		//System.out.println(realpath+"===I am Real Path");
		String Uploadpath=realpath.substring(0,realpath.indexOf("."))+"University-Hub\\WebContent\\Uploadimage\\";
		System.out.println("Uploadpath ="+Uploadpath);
		
		while((part=mpp.readNextPart())!=null)
		{
			if(part.isFile())
			{
				System.out.println("image in coming");
				
				filePart = (FilePart) part;
				
				Uploadpath=Uploadpath+filePart.getFileName();
				
				filename=filePart.getFileName();
				
				File uploadedFile = new File(Uploadpath);
				
				type = filePart.getContentType();
				
				fileSize = filePart.writeTo(uploadedFile);
				
			}
			else if(part.isParam())
			{
				paramPart = (ParamPart) part;
				
				String tagName = paramPart.getName();
				
				System.out.println("tagName = " + tagName);
				
				 tagValue = paramPart.getStringValue();
				 
				System.out.println("tagValue = " + tagValue);
				
				paramValues.add(tagValue);
				
			}

		}
		Beandoc bd=new Beandoc();
		/*String branchname=request.getParameter("branchname");
		bd.setBranchname(branchname);
		System.out.println(" servlet branchname:"+branchname);
		String collegename=request.getParameter("collegename");
		bd.setCollegename(collegename);
		String university=request.getParameter("university");
		bd.setUniversity(university);
		System.out.println(" servlet university:"+university); */         
		bd.setParamValues(paramValues);	//	String collegename,name,city,rank,university,state,country,path;
				
		System.out.println("beansetting");
		bd.setPath(Uploadpath);
			
				bd.setFilename(filename);
				
			
				
				
				
				    MyInterface im=new Implementation();
			
				
			int status=	im.beandoc(bd);
			
			
			if(status==1)
			{
			/*	HttpSession s=request.getSession();
				s.setAttribute("filename", filename);*/
				
				//AdminUploads.jsp
			response.sendRedirect("addcollegesSucces.jsp");	
			}
			else
			{
				response.sendRedirect("error.jsp");
			}
			
			
			
			

	}

}
