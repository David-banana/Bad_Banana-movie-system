package bean;

public class WriteBack {
	private int rid;
	private int cid;
	private String writeText;
	private String date;
	private int userid;
	private String username;
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getWriteText() {
		return writeText;
	}
	public void setWriteText(String writeText) {
		this.writeText = writeText;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "WriteBack [writeText=" + writeText + ", date=" + date + ", userid=" + userid + ", username=" + username
				+ "]";
	}
	
}
