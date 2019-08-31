package bean;

public class CollectionsMoviePath {
	private String movieid;
	private String imgPathOne;
	private String moviename;
	
	public CollectionsMoviePath() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getMoviename() {
		return moviename;
	}

	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}

	public String getMovieid() {
		return movieid;
	}
	public void setMovieid(String movieid) {
		this.movieid = movieid;
	}
	public String getImgPathOne() {
		return imgPathOne;
	}
	public void setImgPathOne(String imgPathOne) {
		this.imgPathOne = imgPathOne;
	}

	@Override
	public String toString() {
		return "CollectionsMoviePath [movieid=" + movieid + ", imgPathOne=" + imgPathOne + ", moviename=" + moviename
				+ "]";
	}
	
	
	
	
	
	
}
