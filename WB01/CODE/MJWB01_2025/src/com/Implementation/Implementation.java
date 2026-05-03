package com.Implementation;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
import com.Database.DBConnection;
import com.Interface.MyInterface;

public class Implementation implements MyInterface{

	
	////fname,lname,mailid,password,conformpassword,dob,Gender,phoneno,address,userid
	PreparedStatement ps1,ps2,ps3,ps;
	Connection con;
	ResultSet rs=null;
	int status=0;
	String query;
	
	
	
	public void connect(String query)
	{
		try {
			Connection con=DBConnection.con();
			
	        ps=con.prepareStatement(query);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
		
	}
	@Override
	public int registerBean(RegisterBean rbean) {
		// TODO Auto-generated method stub
		
		try{
			
			con=DBConnection.con();
			
			ps1=con.prepareStatement("insert into collegesystem.register values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			ps1.setString(1, rbean.getFname());
			System.out.println("fname:"+rbean.getFname());
			ps1.setString(2, rbean.getLname());
			System.out.println("lname:"+rbean.getLname());
			ps1.setString(3, rbean.getMailid());
			System.out.println("getMailid:"+rbean.getMailid());
			ps1.setString(4, rbean.getPassword());
			ps1.setString(5, rbean.getConformpassword());
			System.out.println("getConformpassword():"+rbean.getConformpassword());
			ps1.setString(6, rbean.getDob());
			ps1.setString(7, rbean.getGender());
			ps1.setString(8, rbean.getPhoneno());
			ps1.setString(9, rbean.getAddress());
			ps1.setString(10, rbean.getUserid());
			ps1.setString(11, rbean.getBranch());
			ps1.setString(12, rbean.getYear());
			ps1.setString(13, rbean.getSemi());
			
			 status=ps1.executeUpdate();
			 if(status==1){
				 System.out.println("inserted");
			 }else{
				 System.out.println("not inserted");
			 }
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		
		
		return status;
	}
	@Override
	public boolean login(RegisterBean rbean) {
		// TODO Auto-generated method stub
		
		try{
			con=DBConnection.con();
			ps2=con.prepareStatement("select * from collegesystem.register where mailid=? && password=?");
			ps2.setString(1, rbean.getMailid());
			ps2.setString(2, rbean.getPassword());
			
			ResultSet rs1=ps2.executeQuery();
			while(rs1.next()){
				String mailid=rs1.getString(3);
				String password=rs1.getString(4);
				if(mailid.equals(rbean.getMailid()) && password.equals(rbean.getPassword())){
					return true;
				}
				
			}
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return false;
	}
	@Override
	public int addcollege(Addclgbean ab) {
		// TODO Auto-generated method stub
		
		
		try{
			
			System.out.println("entered try");
			
con=DBConnection.con();
			System.out.println("dbcooneted");
			ps3=con.prepareStatement("insert into collegesystem.addcollege values(?,?,?,?,?)");
			System.out.println("prepered statement");
			ps3.setString(1, ab.getCollegename());
			System.out.println("ab.getCollegename():"+ab.getCollegename());
			ps3.setString(2, ab.getCity());
			System.out.println("ab.getCity():"+ab.getCity());
			ps3.setString(3, ab.getUniversity());
			System.out.println("ab.getUniversity():"+ab.getUniversity());
			ps3.setString(4, ab.getState());
			System.out.println("ab.getState():"+ab.getState());
			ps3.setString(5, ab.getCountry());
			System.out.println("ab.getCountry():"+ab.getCountry());
			status=ps3.executeUpdate();
			System.out.println("ps3");
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		
		return status;
	}
	@Override
	public int addcoursedetails(AddcoursedetailsBean ac) {
		// TODO Auto-generated method stub
		
		try{
			
			con=DBConnection.con();
			PreparedStatement ps=con.prepareStatement("insert into collegesystem.addcoursedetails values(?,?,?,?,?,?) ");
			ps.setString(1, ac.getCollegename());
			ps.setString(2, ac.getCourse());
			ps.setString(3, ac.getBranch());
			ps.setString(4, ac.getNoofseats());
			ps.setString(5, ac.getBcreservstion());
			ps.setString(6, ac.getScreservation());
			status=ps.executeUpdate();
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return status;
	}
	@Override
	public int insertDetails(Addclgbean upbean) {
		// TODO Auto-generated method stub
int status=0;
		
try {
		
		query="INSERT INTO collegesystem.aupload  VALUES(?,?,?,?,?,?,?,?,?)";
		connect(query);
		
		/*System.out.println("size ="+upbean.getParamValues().size());*/
		
	/*	ps.setString(1, upbean.getCollegename());
			ps.setString(2, upbean.getName());
			ps.setString(3, upbean.getCity());
			ps.setString(4, upbean.getRank());
			ps.setString(5, upbean.getUniversity());
			ps.setString(6, upbean.getState());
			ps.setString(7, upbean.getCountry());*/
			
			System.out.println("upbean.getCountry():"+upbean.getCountry());
				
		for (int i = 0; i < upbean.getParamValues().size(); i++)                
	    {
		
			ps.setString(i + 1, upbean.getParamValues().get(i).toString());
			
			System.out.println("i ="+i);
		
	    }	ps.setString(7, upbean.getPath());
		ps.setString(8, upbean.getFilename());
		
	
		ps.setString(9, upbean.getSno());
		
				status=	ps.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	@Override
	public int applicationform(ApplicationFormBean ab) {
		// TODO Auto-generated method stub
		
		
	try{
			
		
		//	private String subject,regno,yearofpass1,percentage1,ugreg,yearofpass2,percentage2,greg,yearofpass3,percentage3,course,discipline;
			con=DBConnection.con();
			PreparedStatement ps=con.prepareStatement("insert into collegesystem.applicationform values(?,?,?,?,?,?,?,?,?,?,?,?,?) ");
			ps.setString(1, ab.getSubject());
			ps.setString(2, ab.getRegno());
			ps.setString(3, ab.getYearofpass1());
			ps.setString(4, ab.getPercentage1());
			ps.setString(5, ab.getUgreg());
			ps.setString(6, ab.getYearofpass2());
			ps.setString(7, ab.getPercentage2());
			ps.setString(8, ab.getGreg());
			ps.setString(9, ab.getYearofpass3());
			ps.setString(10, ab.getPercentage3());
			ps.setString(11, ab.getCourse());
			ps.setString(12, ab.getDiscipline());
			ps.setString(13, ab.getStudentname());
			
	
			status=ps.executeUpdate();
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return status;
	}
	@Override
	public int facultyDetails(AddFacultyDetailsBean adb) {
		// TODO Auto-generated method stub
		try{
			
			con=DBConnection.con();
			
			PreparedStatement ps=con.prepareStatement("insert into collegesystem.AddFacultyDetails values(?,?,?,?,?,?,?)");
			ps.setString(1,adb.getSlno());
			ps.setString(2, adb.getNameoffaculty());
			ps.setString(3, adb.getEducationalqualification());
			ps.setString(4, adb.getDesignation());
			
			ps.setString(5, adb.getUniversityname());
			ps.setString(6, adb.getCollegename());
			
			ps.setString(7, adb.getBranch());
			System.out.println("imple");
			System.out.println("nameoffaculty:"+adb.getNameoffaculty());
			System.out.println("educationalqualification:"+ adb.getEducationalqualification());
			
			System.out.println("designation:"+adb.getDesignation());
			
			
			
			status=ps.executeUpdate();
			
			
			
			
			System.out.println("excecute");
			System.out.println("nameoffaculty:"+adb.getNameoffaculty());
			System.out.println("educationalqualification:"+ adb.getEducationalqualification());
			
			System.out.println("designation:"+adb.getDesignation());
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		
		
		return status;
	}
	@Override
	public int insertosmania(Addclgbean upbean) {
		int status=0;
		
		try {
				
				query="INSERT INTO collegesystem.auploadosmania  VALUES(?,?,?,?,?,?,?,?,?)";
				connect(query);
				
				/*System.out.println("size ="+upbean.getParamValues().size());*/
				
			/*	ps.setString(1, upbean.getCollegename());
					ps.setString(2, upbean.getName());
					ps.setString(3, upbean.getCity());
					ps.setString(4, upbean.getRank());
					ps.setString(5, upbean.getUniversity());
					ps.setString(6, upbean.getState());
					ps.setString(7, upbean.getCountry());*/
					
					System.out.println("upbean.getCountry():"+upbean.getCountry());
						
				for (int i = 0; i < upbean.getParamValues().size(); i++)                
			    {
				
					ps.setString(i + 1, upbean.getParamValues().get(i).toString());
					
					System.out.println("i ="+i);
				
			    }	ps.setString(7, upbean.getPath());
				ps.setString(8, upbean.getFilename());
				
			
				ps.setString(9, upbean.getSno());
				
						status=	ps.executeUpdate();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return status;
			}

	@Override
	public int insertsvu(Addclgbean upbean) {
		// TODO Auto-generated method stub
int status=0;
		
		try {
				
				query="INSERT INTO collegesystem.uploadsvu  VALUES(?,?,?,?,?,?,?,?,?)";
				connect(query);
				
				/*System.out.println("size ="+upbean.getParamValues().size());*/
				
			/*	ps.setString(1, upbean.getCollegename());
					ps.setString(2, upbean.getName());
					ps.setString(3, upbean.getCity());
					ps.setString(4, upbean.getRank());
					ps.setString(5, upbean.getUniversity());
					ps.setString(6, upbean.getState());
					ps.setString(7, upbean.getCountry());*/
					
					System.out.println("upbean.getCountry():"+upbean.getCountry());
						
				for (int i = 0; i < upbean.getParamValues().size(); i++)                
			    {
				
					ps.setString(i + 1, upbean.getParamValues().get(i).toString());
					
					System.out.println("i ="+i);
				
			    }	ps.setString(7, upbean.getPath());
				ps.setString(8, upbean.getFilename());
				
			
				ps.setString(9, upbean.getSno());
				
						status=	ps.executeUpdate();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return status;
			}
	@Override
	public int jntuPlacementDetails(JntuPlacementBean jb) {
		// TODO Auto-generated method stub
try{//private String universityname,collegename,branchname,students_passedout,students_placed,companyname,salpackage,location;sno
			
			con=DBConnection.con();
			PreparedStatement ps=con.prepareStatement("insert into collegesystem.jntuplacementdetails values(?,?,?,?,?,?,?,?,?) ");
			ps.setString(1, jb.getUniversityname());
			ps.setString(2, jb.getCollegename());
			ps.setString(3, jb.getBranchname());
			ps.setString(4, jb.getStudents_passedout());
			ps.setString(5, jb.getStudents_placed());
			ps.setString(6, jb.getCompanyname());
			ps.setString(7, jb.getSalpackage());
			ps.setString(8, jb.getLocation());
			ps.setInt(9, jb.getSno());
			status=ps.executeUpdate();
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return status;
	}
	
	public int Uploadfiles(ArrayList m, MyBean bean) {
		// TODO Auto-generated method stub
		int status = 0;
int sno=0;

		query = "insert into collegesystem.uploadfiles values (?,?,?,?,?,?,?,?)";
		connect(query);
		System.out.println("query=" + query);
		try {
			ps.setString(1,bean.getFilename());
			ps.setString(2, bean.getFiletype());
			ps.setDouble(3, bean.getFilesize());
			ps.setString(4,bean.getTagvalue());
			ps.setString(5, bean.getFileContent());
	        ps.setInt(6, sno);
	        ps.setString(7, bean.getDeptname());
			ps.setString(8, bean.getCollegename());
			
			System.out.println("key=" + bean.getTagvalue());
			System.out.println("filenmame=" + bean.getFilename());
			System.out.println("filesize=" + bean.getFilesize());
			System.out.println("filetype=" + bean.getFiletype());
			System.out.println("fileContent=" + bean.getFileContent());
			
			System.out.println("getCollegename=" +bean.getCollegename());
			
			System.out.println("bean.getDeptname()=" +bean.getDeptname());
			status = ps.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	@Override
	public int studentpayment(PaymentBean pb) {
		// TODO Auto-generated method stub
		//	private String stname,mobileno,bank,accno,amount,pincode,address,city,state,country;
		
		
		String waiting="waiting";
		
		
		try{
		con=DBConnection.con();
		PreparedStatement ps=con.prepareStatement("insert into collegesystem.studentpaymnet values(?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
		ps.setString(1, pb.getStname());
		ps.setString(2, pb.getMobileno());
		ps.setString(3, pb.getBank());
		ps.setString(4, pb.getAccno());
		ps.setString(5, pb.getAmount());
		ps.setString(6, pb.getPincode());
		ps.setString(7, pb.getAddress());
		ps.setString(8, pb.getCity());
		ps.setString(9, pb.getState());
		ps.setString(10, pb.getCountry());
		ps.setString(11,pb.getSno());
		ps.setString(12, waiting);
		ps.setString(13, pb.getSelectcollegesnames());
		ps.setString(14, pb.getBranch());
		status=ps.executeUpdate();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	return status;
}
	@Override
	public int issuehallticket(IssuHallticketsBean ib) {
		// TODO Auto-generated method stub
		int status = 0;
int sno=0;

		query = "insert into collegesystem.issuhalticket values (?,?,?,?,?,?)";
		connect(query);
		System.out.println("query=" + query);
		try {
			ps.setString(1,ib.getStuname());
			ps.setString(2, ib.getBranch());
			ps.setString(3, ib.getClgname());
			ps.setInt(4, sno);
			ps.setString(5, ib.getUniversityname());
			ps.setString(6, ib.getHallticketno());
	
		
		

			status = ps.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	

}
	@Override
	public int beandoc(Beandoc bd) {
		// TODO Auto-generated method stub
		int status=0;
		
		try {
				
				query="INSERT INTO collegesystem.uploadfiles  VALUES(?,?,?,?,?,?,?,?,?)";
				connect(query);
				
				System.out.println("size ="+bd.getParamValues().size());
				
			/*	ps.setString(1, upbean.getCollegename());
					ps.setString(2, upbean.getName());
					ps.setString(3, upbean.getCity());
					ps.setString(4, upbean.getRank());
					ps.setString(5, upbean.getUniversity());
					ps.setString(6, upbean.getState());
					ps.setString(7, upbean.getCountry());*/
					
					//System.out.println("upbean.getCountry():"+bd.getCountry());
						
				for (int i = 0; i < bd.getParamValues().size(); i++)                
			    {
				
					ps.setString(i + 1, bd.getParamValues().get(i).toString());
					
					System.out.println("i ="+i);
				
			    }	ps.setString(4, bd.getPath());
				ps.setString(1, bd.getFilename());
				ps.setString(5, bd.getFilename());
				ps.setString(7, bd.getFilename());
				ps.setString(8, bd.getFilename());
				ps.setString(9, bd.getFilename());
				ps.setString(6, bd.getSno());
				
				
				
				
				
				
				
				
				/*ps.setString(1, bd.getFilename());
				ps.setString(2, bd.getFiletype());
				ps.setString(3, bd.getFilesize());
				ps.setString(4, bd.getPath());
				ps.setString(5, bd.getSs());
				ps.setString(6, bd.getSno());
				ps.setString(7, bd.getBranchname());
				ps.setString(8, bd.getCollegename());
				ps.setString(9, bd.getUniversity());*/
				
				
				
				
				
				
				
						status=	ps.executeUpdate();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				return status;
			}
	@Override
	public int attendence(SAttendence sa) {
		// TODO Auto-generated method stub
		int status=0;
	
		//private String  sname,branch,year,sem,userid,month,present,workdays,percentage;
		
		try{
		con=DBConnection.con();
		PreparedStatement ps=con.prepareStatement("insert into collegesystem.attendence values(?,?,?,?,?,?,?,?,?,?) ");
		ps.setString(1, sa.getSname());
		ps.setString(2, sa.getBranch());
		ps.setString(3, sa.getYear());
		ps.setString(4, sa.getSem());
		ps.setString(5, sa.getUserid());
		ps.setString(6, sa.getMonth());
		ps.setString(7, sa.getPresent());
		ps.setString(8, sa.getWorkdays());
		ps.setDouble(9, sa.getPercentage());
		ps.setString(10, sa.getReport());
		
		status=ps.executeUpdate();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	return status;
}
	@Override
	public int internal(SInternals sinter) {
		// TODO Auto-generated method stub
try{
			
			con=DBConnection.con();
			PreparedStatement ps=con.prepareStatement("insert into collegesystem.internal values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
			ps.setString(1, sinter.getSname1());
			ps.setString(2, sinter.getHno());
			ps.setString(3, sinter.getBrnch());
			ps.setString(4, sinter.getYear());
			ps.setString(5, sinter.getSemi());
			ps.setString(6, sinter.getInter());
			ps.setString(7, sinter.getEng());
			ps.setString(8, sinter.getRes1());
			ps.setString(9, sinter.getMath1());
			ps.setString(10, sinter.getRes2());
			ps.setString(11, sinter.getMath2());
			ps.setString(12, sinter.getRes3());
			ps.setString(13, sinter.getPhysics());
			ps.setString(14, sinter.getRes4());
			ps.setString(15, sinter.getChemistry());
			ps.setString(16, sinter.getRes5());
			ps.setString(17, sinter.getComptr());
			ps.setString(18, sinter.getRes6());
			ps.setInt(19, sinter.getInternal_total());
			ps.setDouble(20, sinter.getInternal_percent());
			ps.setString(21, sinter.getReport1());
			
			status=ps.executeUpdate();
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return status;
	}
	
	@Override
	public int external(SExternals sexter1) {
		// TODO Auto-generated method stub
try{
			
			con=DBConnection.con();
			PreparedStatement ps1=con.prepareStatement("insert into collegesystem.external values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps1.setString(1, sexter1.getSname2());
			ps1.setString(2, sexter1.getHno2());
			ps1.setString(3, sexter1.getBrnch2());
			ps1.setString(4, sexter1.getYear2());
			ps1.setString(5, sexter1.getSemi2());
			//ps.setString(6,exinter.getInter());
			ps1.setString(6, sexter1.getEng2());
			ps1.setString(7, sexter1.getRes12());
			ps1.setString(8, sexter1.getMath12());
			ps1.setString(9, sexter1.getRes22());
			ps1.setString(10, sexter1.getMath22());
			ps1.setString(11, sexter1.getRes32());
			ps1.setString(12, sexter1.getPhysics2());
			ps1.setString(13, sexter1.getRes42());
			ps1.setString(14, sexter1.getChemistry2());
			ps1.setString(15, sexter1.getRes52());
			ps1.setString(16, sexter1.getComptr2());
			ps1.setString(17, sexter1.getRes62());
			ps1.setInt(18, sexter1.getExternal_total());
			ps1.setDouble(19, sexter1.getExternal_percent());
			ps1.setString(20, sexter1.getReport2());
			
			status=ps1.executeUpdate();
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return status;
	}
}
