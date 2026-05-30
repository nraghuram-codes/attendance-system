package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.SInternals;
import com.Implementation.Implementation;
import com.Interface.MyInterface;

/**
 * Servlet implementation class Internals
 */
@WebServlet("/Internals")
public class Internals extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Internals() {
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
		
		//sname1,hno,brnch,year,semi,inter,eng,math1,math2,physics;
		//chemistry,comptr,res1,res2,res3,res4,res5,res6;
		
		String report1=null;
		
String sname1=request.getParameter("sname1");
String hno=request.getParameter("hno");
String brnch=request.getParameter("brnch");
String year=request.getParameter("year");
String semi=request.getParameter("semi");
String inter=request.getParameter("inter");
/*subjects*/
String eng=request.getParameter("eng");
String math1=request.getParameter("math1");
String math2=request.getParameter("math2");
String physics=request.getParameter("physics");
String chemistry=request.getParameter("chemistry");
String comptr=request.getParameter("comptr");


int english=Integer.parseInt(eng);
int maths1=Integer.parseInt(math1);
int maths2=Integer.parseInt(math2);
int physi=Integer.parseInt(physics);
int chemi=Integer.parseInt(chemistry);
int comp=Integer.parseInt(comptr);



int total=english+maths1+maths2+physi+chemi+comp;
double total1=(double)total;
System.out.println("total1::"+total1);

double intrpercentage=total1/180;
System.out.println("percnt1::"+intrpercentage);

double intr_percentage_final=intrpercentage*100;
System.out.println("percnt2::"+intr_percentage_final);

if(intr_percentage_final<60)
{
     report1="BAD";
}

else if(intr_percentage_final>60 && intr_percentage_final<70)
{
	 report1="AVERAGE";
}

else if(intr_percentage_final>70 && intr_percentage_final<80)
{
	 report1="GOOD";
}

else
{
	 report1="EXCELLENT";
}



String res1=request.getParameter("res1");
String res2=request.getParameter("res2");
String res3=request.getParameter("res3");

String res4=request.getParameter("res4");
String res5=request.getParameter("res5");
String res6=request.getParameter("res6");

SInternals sinter=new SInternals();

sinter.setSname1(sname1);
sinter.setBrnch(brnch);
sinter.setYear(year);
sinter.setSemi(semi);
sinter.setInter(inter);
sinter.setEng(eng);
sinter.setMath1(math1);
sinter.setMath2(math2);
sinter.setPhysics(physics);
sinter.setChemistry(chemistry);
sinter.setComptr(comptr);
sinter.setHno(hno);
sinter.setRes1(res1);
sinter.setRes2(res2);
sinter.setRes3(res3);
sinter.setRes4(res4);
sinter.setRes5(res5);
sinter.setRes6(res6);
sinter.setInternal_total(total);
sinter.setInternal_percent(intr_percentage_final);
sinter.setReport1(report1);

MyInterface in1=new Implementation();

int status=in1.internal(sinter);

		if(status==1){
			response.sendRedirect("success.jsp");
		}
		else{
			response.sendRedirect("failed.jsp");
		}
	}

}
