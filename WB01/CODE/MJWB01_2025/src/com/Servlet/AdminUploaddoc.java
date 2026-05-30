package com.Servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.BeanClass.MyBean;
import com.Implementation.Implementation;
import com.Interface.MyInterface;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

/**
 * Servlet implementation class AdminUploaddoc
 */
@WebServlet("/AdminUploaddoc")
public class AdminUploaddoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUploaddoc() {
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
		String filename = "";
		String key = "";
		String fileContenttype = "";
		Double fileSize = (double) 0;
		int fileCount = 0;
		int status = 0;
		String collegename=request.getParameter("collegename");
		String deptname=request.getParameter("deptname");
		
		System.out.println("before collegename:"+collegename);
		System.out.println("before deptname:"+deptname);
		MultipartParser mp = new MultipartParser(request, 46849846);
		Part part = null;
		FilePart filePart = null;
		ParamPart paramPart = null;
		ArrayList<String> uploads = new ArrayList<String>();

		// ArrayList<String> values = new ArrayList<String>();
		MyBean mb = new MyBean();
		mb.setCollegename(collegename);
		mb.setDeptname(deptname);
		
		
		System.out.println("setting collegename:"+collegename);
		System.out.println("setting deptname:"+deptname);
		while ((part = mp.readNextPart()) != null)
		{
			String fileupload = getServletContext().getRealPath("/");
			fileupload = fileupload.substring(0, fileupload.indexOf("."))
					+ "University-Hub\\WebContent\\documents\\";
			if (part.isFile()) {
				fileCount++;
				filePart = (FilePart) part;
				fileupload = fileupload + filePart.getFileName();
				System.out.println("fileuploadname=" + fileupload);
				File uploadfile = new File(fileupload);
				filename = filePart.getFileName();
				mb.setFilename(filename);
				System.out.println("filename=" + filename);
				uploads.add(filename);
				fileContenttype = filePart.getContentType();
				mb.setFiletype(fileContenttype);
				System.out.println("filetype=" + fileContenttype);
				uploads.add(fileContenttype);
				fileSize = (double) filePart.writeTo(uploadfile);
				mb.setFilesize(fileSize);
				System.out.println("filesize=" + fileSize);
				uploads.add(fileSize+"");
			/*	uploads.add(collegename);
				uploads.add(deptname);
				*/
				
				System.out.println("colleg name.....="+collegename);
				System.out.println("deptname......="+deptname);
				
				System.out.println("uploadfile="+uploadfile);
				String line;//C:\siva workspace perminent\CloudSADC
				/*BufferedReader br=new BufferedReader(new FileReader("C:\\siva workspace perminent\\University-Hub\\WebContent\\documents\\"+filename));
				while((line=br.readLine())!=null)
				{
					System.out.println("DATACONTENT:::"+line);
					mb.setFileContent(line);
				}*/						
			} else if (part.isParam())
			{
				paramPart = (ParamPart) part;
				String tagName = paramPart.getName();
			/*	System.out.println("tagName="+tagName);
				String tagValue = paramPart.getStringValue();
				mb.setTagvalue(tagValue);
				System.out.println("tagValue="+tagValue);
				uploads.add(tagValue);*/
				/**/
			}
		}
		/*uploads.add(collegename);
		uploads.add(deptname);*/
			mb.setUploadValues(uploads);
			MyInterface mi = new Implementation();
			
			status = mi.Uploadfiles(uploads,mb);
			System.out.println("adding at impleme filename=" + filename);
			
			System.out.println(" adding at impleme filetype=" + fileContenttype);
			System.out.println(" adding at impleme filesize=" + fileSize);
			System.out.println(" adding at impleme collegename=" + collegename);
			
			System.out.println(" adding at impleme deptname=" + deptname);
		/*	uploads.clear();*/
			/*uploads = mi.DownloadFiles();*/
			//System.out.println(uploads + "   aRRAYLIST%%%%%%%");
			System.out.println(" fileCount = " + fileCount);
			
		
		if (status == 1) {

			HttpSession session = request.getSession(true);
			session.setAttribute("uploadfilename", uploads);

			RequestDispatcher rs = request
					.getRequestDispatcher("AdminUploadSuccess.jsp");
			rs.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("Error.jsp");
			rd.forward(request, response);
		}
	}

}