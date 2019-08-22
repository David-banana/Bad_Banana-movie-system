package bean;

public class HomeUser {
	private int cid;
	private String username;
	private String filmname;
	private String fileComment;
	private String imgPathOne;
	private String date;
	
	public HomeUser() {
		super();
	}

	
	public int getCid() {
		return cid;
	}


	public void setCid(int cid) {
		this.cid = cid;
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFilmname() {
		return filmname;
	}

	public void setFilmname(String filmname) {
		this.filmname = filmname;
	}

	public String getFileComment() {
		return fileComment;
	}

	public void setFileComment(String fileComment) {
		this.fileComment = fileComment;
	}

	public String getImgPathOne() {
		return imgPathOne;
	}

	public void setImgPathOne(String imgPathOne) {
		this.imgPathOne = imgPathOne;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}


	@Override
	public String toString() {
		return "HomeUser [cid=" + cid + ", username=" + username + ", filmname=" + filmname + ", fileComment="
				+ fileComment + ", imgPathOne=" + imgPathOne + ", date=" + date + "]";
	}

	

	

	

	
	
	
}
