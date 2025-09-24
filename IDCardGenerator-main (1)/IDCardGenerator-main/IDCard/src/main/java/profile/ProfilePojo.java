package profile;

import java.util.Date;



public class ProfilePojo {

    private int rollNo;
    private String name;
    private String className; // Changed from clazz
    private String division;
    private Date dateOfBirth;
    private String mobileNo;
    private String address;
    private String profilePhotoName;
    private Date issuedate;
    private int Uid;

    // Constructors
    public ProfilePojo() {
    }

    public ProfilePojo(int rollNo, String name, String className, String division, Date dateOfBirth, String mobileNo,
                   String address, String profilePhotoName,Date issuedate,int Uid) {
        this.rollNo = rollNo;
        this.name = name;
        this.className = className; // Changed from clazz
        this.division = division;
        this.dateOfBirth = dateOfBirth;
        this.mobileNo = mobileNo;
        this.address = address;
        this.profilePhotoName = profilePhotoName;
        this.issuedate = issuedate ;
        this.Uid = Uid;
    }

    // Getters and Setters
    public int getRollNo() {
        return rollNo;
    }

    public void setRollNo(int rollNo) {
        this.rollNo = rollNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getDivision() {
        return division;
    }

    public void setDivision(String division) {
        this.division = division;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getProfilePhotoName() {
        return profilePhotoName;
    }

    public void setProfilePhotoName(String profilePhotoName) {
        this.profilePhotoName = profilePhotoName;
    }

    public Date getIssuedate() {
		return issuedate;
	}

	public void setIssuedate(Date issuedate) {
		this.issuedate = issuedate;
	}

	public int getUid() {
		return Uid;
	}

	public void setUid(int uid) {
		Uid = uid;
	}

	@Override
	public String toString() {
		return "ProfilePojo [rollNo=" + rollNo + ", name=" + name + ", className=" + className + ", division="
				+ division + ", dateOfBirth=" + dateOfBirth + ", mobileNo=" + mobileNo + ", address=" + address
				+ ", profilePhotoName=" + profilePhotoName + ", issuedate=" + issuedate + ", Uid=" + Uid + "]";
	}
}
