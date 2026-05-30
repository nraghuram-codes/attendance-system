package com.Interface;

import java.util.ArrayList;

import sun.security.x509.IssuerAlternativeNameExtension;

import com.Bean.AddFacultyDetailsBean;
import com.Bean.Addclgbean;
import com.Bean.AddcoursedetailsBean;
import com.Bean.ApplicationFormBean;
import com.Bean.Beandoc;
import com.Bean.IssuHallticketsBean;
import com.Bean.JntuPlacementBean;
import com.Bean.PaymentBean;
import com.Bean.RegisterBean;
import com.Bean.SAttendence;
import com.Bean.SExternals;
import com.Bean.SInternals;
import com.BeanClass.MyBean;

public interface MyInterface {
	public int registerBean(RegisterBean rbean);
	public boolean login(RegisterBean rbean);
	
	public int addcollege(Addclgbean ab);
	public int addcoursedetails(AddcoursedetailsBean ac);
	public int insertDetails(Addclgbean upbean);
	
	
	
	public int insertosmania(Addclgbean upbean);
	
	public int insertsvu(Addclgbean upbean);
public int applicationform(ApplicationFormBean ab);

public int facultyDetails(AddFacultyDetailsBean adb); 

public int jntuPlacementDetails(JntuPlacementBean jb);

public int Uploadfiles(ArrayList m,MyBean bean) ;

public int studentpayment(PaymentBean pb);
public int issuehallticket(IssuHallticketsBean ib);
public int beandoc(Beandoc bd);

public int attendence(SAttendence sa);

public int internal(SInternals sinter);
public int external(SExternals sexter1);
}
