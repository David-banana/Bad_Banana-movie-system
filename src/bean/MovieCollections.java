package bean;

public class MovieCollections {
	private Long userid;
	private Long movieid;
	public Long getUserid() {
		return userid;
	}
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	public Long getMovieid() {
		return movieid;
	}
	public void setMovieid(Long movieid) {
		this.movieid = movieid;
	}

	@Override
	public String toString() {
		return "MovieCollections [userid=" + userid + ", movieid=" + movieid + "]";
	}
	public MovieCollections() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
