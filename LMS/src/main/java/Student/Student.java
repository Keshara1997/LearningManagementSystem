package Student;
 

public class Student {

	private int id;
	private String fname;
	private String lname;
	private String bdy;
	private String contactNum;
	private String email;
	private String school;
	private String address;
	private String medium;
	private String year;
	private String uName;
	private String passwd;

	public Student(int id, String fname, String lname, String bdy, String contactNum, String email, String school,
			String address, String medium, String year, String uName, String passwd) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.bdy = bdy;
		this.contactNum = contactNum;
		this.email = email;
		this.school = school;
		this.address = address;
		this.medium = medium;
		this.year = year;
		this.uName = uName;
		this.passwd = passwd;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getBdy() {
		return bdy;
	}

	public void setBdy(String bdy) {
		this.bdy = bdy;
	}

	public String getContactNum() {
		return contactNum;
	}

	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMedium() {
		return medium;
	}

	public void setMedium(String medium) {
		this.medium = medium;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	


}
