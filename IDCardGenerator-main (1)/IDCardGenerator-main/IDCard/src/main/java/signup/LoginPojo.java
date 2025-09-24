package signup;

public class LoginPojo {

	private String name;
	private String password;

	private String email;

	private int uid;

	// Constructors
	public LoginPojo() {
	}

	public LoginPojo(String name, String password, String email, int uid) {
		super();
		this.name = name;
		this.password = password;

		this.email = email;

		this.uid = uid;

	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	@Override
	public String toString() {
		return "LoginPojo [name=" + name + ", password=" + password + ", email=" + email + ", uid=" + uid + "]";
	}

}
