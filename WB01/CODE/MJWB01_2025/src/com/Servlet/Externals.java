package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.SExternals;
import com.Bean.SInternals;
import com.Implementation.Implementation;
import com.Interface.MyInterface;

/**
 * Servlet implementation class Externals
 */
@WebServlet("/Externals")
public class Externals extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Externals() {
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
	
		String report2=null;
		
		String sname2=request.getParameter("sname2");
		String hno2=request.getParameter("hno2");
		String brnch2=request.getParameter("brnch2");
		String year2=request.getParameter("year2");
		String semi2=request.getParameter("semi2");

		//String inter=request.getParameter("inter");
		String eng2=request.getParameter("eng2");
		String math12=request.getParameter("math12");
		String math22=request.getParameter("math22");
		String physics2=request.getParameter("physics2");

		String chemistry2=request.getParameter("chemistry2");
		String comptr2=request.getParameter("comptr2");
		
		int english2=Integer.parseInt(eng2);
		int maths12=Integer.parseInt(math12);
		int maths22=Integer.parseInt(math22);
		int physi2=Integer.parseInt(physics2);
		int chemi2=Integer.parseInt(chemistry2);
		int comp2=Integer.parseInt(comptr2);


int total=english2+maths12+maths22+physi2+chemi2+comp2;
double total1=(double)total;
System.out.println("total1::"+total1);

double intrpercentage=total1/420;
System.out.println("percnt1::"+intrpercentage);

double intr_percentage_final=intrpercentage*100;
System.out.println("percnt2::"+intr_percentage_final);

		
if(intr_percentage_final<60)
{
     report2="BAD";
}

else if(intr_percentage_final>60 && intr_percentage_final<70)
{
	 report2="AVERAGE";
}

else if(intr_percentage_final>70 && intr_percentage_final<80)
{
	 report2="GOOD";
}

else
{
	 report2="EXCELLENT";
}
		
		
		String res12=request.getParameter("res12");
		String res22=request.getParameter("res22");
		String res32=request.getParameter("res32");

		String res42=request.getParameter("res42");
		String res52=request.getParameter("res52");
		String res62=request.getParameter("res62");

		SExternals sexter1=new SExternals();

		sexter1.setSname2(sname2);
		sexter1.setBrnch2(brnch2);
		sexter1.setYear2(year2);
		sexter1.setSemi2(semi2);
		//sinter.setInter(inter);
		sexter1.setEng2(eng2);
		sexter1.setMath12(math12);
		sexter1.setMath22(math22);
		sexter1.setPhysics2(physics2);
		sexter1.setChemistry2(chemistry2);
		sexter1.setComptr2(comptr2);
		sexter1.setHno2(hno2);
		sexter1.setRes12(res12);
		sexter1.setRes22(res22);
		sexter1.setRes32(res32);
		sexter1.setRes42(res42);
		sexter1.setRes52(res52);
		sexter1.setRes62(res62);
		sexter1.setExternal_total(total);
		sexter1.setExternal_percent(intr_percentage_final);
		sexter1.setReport2(report2);
		
		MyInterface ex=new Implementation();

		int status=ex.external(sexter1);

				if(status==1){
					response.sendRedirect("success.jsp");
				}
				else{
					response.sendRedirect("failed.jsp");
				}

		
	}

}
