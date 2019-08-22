package bean;

public class Advice {
	private Integer aviceid;
	private Integer userid;
	private String name;
	private String email;
	private String phone;
	private String address;
	private String advice;
	public String getName() {
		return name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getAviceid() {
		return aviceid;
	}
	public void setAviceid(Integer aviceid) {
		this.aviceid = aviceid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getAdvice() {
		return advice;
	}
	public void setAdvice(String advice) {
		this.advice = advice;
	}
	@Override
	public String toString() {
		return "Advice [aviceid=" + aviceid + ", userid=" + userid + ", name=" + name + ", email=" + email + ", phone="
				+ phone + ", address=" + address + ", advice=" + advice + "]";
	}

	
}
