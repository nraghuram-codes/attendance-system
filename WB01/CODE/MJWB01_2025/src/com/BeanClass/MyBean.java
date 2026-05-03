package com.BeanClass;
import java.io.InputStream;
import java.util.ArrayList;
public class MyBean {
	private ArrayList<String> uploadValues;
    public ArrayList<String> getUploadValues() {
		return uploadValues;
	}
	public void setUploadValues(ArrayList<String> uploadValues) {
		this.uploadValues = uploadValues;
	}
   private String mobileno;
   public String getMobileno() {
		return mobileno;
	}
   public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
    private String firstname, tagvalue;
    public String getTagValue() {
		return tagValue;
	}
	public void setTagValue(String tagValue) {
		this.tagValue = tagValue;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getMailid() {
		return mailid;
	}

	public void setMailid(String mailid) {
		this.mailid = mailid;
	}

	public String getRemailid() {
		return remailid;
	}

	public void setRemailid(String remailid) {
		this.remailid = remailid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfpassword() {
		return confpassword;
	}

	public void setConfpassword(String confpassword) {
		this.confpassword = confpassword;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getContact() {
		return contact;
	}

	public String getQuestions() {
		return questions;
	}

	public void setQuestions(String questions) {
		this.questions = questions;
	}

	private ArrayList<String> allnames;
	private String lastname;
	private String admin_name;

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdminpassword() {
		return adminpassword;
	}
    public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}

	private String adminpassword;
	private String nofiles;

	public String getNofiles() {
		return nofiles;
	}
    public void setNofiles(String nofiles) {
		this.nofiles = nofiles;
	}
	private String mailid;
	private String remailid;
	private String password;
	private String confpassword;
	private String sex;
	private String contact;
	private String questions;
	private String Loginmail;
    private String answer;
	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPacktype() {
		return packtype;
	}

	public void setPacktype(String packtype) {
		this.packtype = packtype;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	private String packtype;
	private String amount;
	private String newregDate;

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFiletype() {
		return filetype;
	}

	public String getTagvalue() {
		return tagValue;
	}

	public void setTagvalue(String tagvalue) {
		this.tagValue = tagvalue;
	}

	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}

	private String filename;
	private String filetype;
	private String tagValue;
	private double filesize;
	private String fileContent;
	

	public String getFileContent() {
		return fileContent;
	}

	public void setFileContent(String fileContent) {
		this.fileContent = fileContent;
	}

	public double getFilesize() {
		return filesize;
	}

	public void setFilesize(double filesize) {
		this.filesize = filesize;
	}

	private InputStream image;

	public InputStream getImage() {
		return image;
	}

	public void setImage(InputStream image) {
		this.image = image;
	}

	public String getNewregDate() {
		return newregDate;
	}

	public void setNewregDate(String newregDate) {
		this.newregDate = newregDate;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getLoginmail() {
		return Loginmail;
	}

	public void setLoginmail(String loginmail) {
		Loginmail = loginmail;
	}

	public String getLoginpass() {
		return Loginpass;
	}

	public void setLoginpass(String loginpass) {
		Loginpass = loginpass;
	}
	private String Loginpass;
	public void setContact(String contact) {
		// TODO Auto-generated method stub
		this.contact = contact;
	}
	public String key;

	public String getKey() {
		return key;
	}
        public void setKey(String key) {
		this.key = key;
	}	
        private String collegename,deptname;
		public ArrayList<String> getAllnames() {
			return allnames;
		}
		public void setAllnames(ArrayList<String> allnames) {
			this.allnames = allnames;
		}
		public String getCollegename() {
			return collegename;
		}
		public void setCollegename(String collegename) {
			this.collegename = collegename;
		}
		public String getDeptname() {
			return deptname;
		}
		public void setDeptname(String deptname) {
			this.deptname = deptname;
		}
}
