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
import com.Implementation.Implementation;
import com.Interface.MyInterface;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

/**
 * Servlet implementation class AdminUploadSVUClg
 */
@WebServlet("/AdminUploadSVUClg")
public class AdminUploadSVUClg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUploadSVUClg() {
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
		
		Part part = null;
		FilePart filePart = null;
		ParamPart paramPart = null;
		String type = null;
		double fileSize=0.0;
		String filename =null;
		String tagValue =null;
		//String items=null;
		String filecontent="";
				
		String country1=null;
		ArrayList<String> paramValues = new ArrayList<String>();

		
		MultipartParser mpp=new MultipartParser(request, 999999999);

		String realpath=getServletContext().getRealPath("/");
		//System.out.println(realpath+"===I am Real Path");
		String Uploadpath=realpath.substring(0,realpath.indexOf("."))+"University-Hub\\WebContent\\SVUUploadimage\\";
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
		Addclgbean upbean=new Addclgbean();
			            
			upbean.setParamValues(paramValues);	//	String collegename,name,city,rank,university,state,country,path;
				
		System.out.println("beansetting");
		upbean.setPath(Uploadpath);
			
				upbean.setFilename(filename);
				
			
				
				
				
				    MyInterface im=new Implementation();
			
				
			int status=	im.insertsvu(upbean);
			
			if(status==1)
			{
				
				
				//AdminUploads.jsp
			response.sendRedirect("suvaddcollegesSucces.jsp");	
			}
			else
			{
				response.sendRedirect("error.jsp");
			}
			
			
			
			

	}

}