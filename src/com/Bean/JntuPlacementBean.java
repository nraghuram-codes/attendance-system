package com.Bean;

public class JntuPlacementBean {

	  
	
	public String getUniversityname() {
		return universityname;
	}

	public void setUniversityname(String universityname) {
		this.universityname = universityname;
	}

	public String getCollegename() {
		return collegename;
	}

	public void setCollegename(String collegename) {
		this.collegename = collegename;
	}

	public String getBranchname() {
		return branchname;
	}

	public void setBranchname(String branchname) {
		this.branchname = branchname;
	}

	public String getStudents_passedout() {
		return students_passedout;
	}

	public void setStudents_passedout(String students_passedout) {
		this.students_passedout = students_passedout;
	}

	public String getStudents_placed() {
		return students_placed;
	}

	public void setStudents_placed(String students_placed) {
		this.students_placed = students_placed;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getSalpackage() {
		return salpackage;
	}

	public void setSalpackage(String salpackage) {
		this.salpackage = salpackage;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	private String universityname,collegename,branchname,students_passedout,students_placed,companyname,salpackage,location;
	private int sno;
	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}
}
