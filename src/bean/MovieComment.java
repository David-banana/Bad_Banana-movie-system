package bean;

public class MovieComment {
	private int cid;
	private int userid;
	private String username;
	private int fid;
	private String filmname;
	private String date;
	private String fileComment;
	private int click;
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
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getFileComment() {
		return fileComment;
	}
	public void setFileComment(String fileComment) {
		this.fileComment = fileComment;
	}
	public String getFilmname() {
		return filmname;
	}
	public void setFilmname(String filmname) {
		this.filmname = filmname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getClick() {
		return click;
	}
	public void setClick(int click) {
		this.click = click;
	}
	@Override
	public String toString() {
		return "MovieComment [cid=" + cid + ", userid=" + userid + ", username=" + username + ", fid=" + fid
				+ ", filmname=" + filmname + ", date=" + date + ", fileComment=" + fileComment + ", click=" + click + "]";
	}
	
	
}
