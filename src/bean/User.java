package bean;

public class User {
	private Integer userid;
	private String username;
	private String sex;
	private String password;
	private String emaiil;
	private String phone;
	private String address;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmaiil() {
		return emaiil;
	}
	public void setEmaiil(String emaiil) {
		this.emaiil = emaiil;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", sex=" + sex + ", password=" + password
				+ ", emaiil=" + emaiil + ", phone=" + phone + ", address=" + address + "]";
	}
	
}
