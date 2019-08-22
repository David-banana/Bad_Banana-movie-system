package dao;

import java.util.List;

import bean.Movie;

public interface MovieDao {
	Movie selectMovieInformation(int movieid);
	List<Movie> selecctAllMovieInformation();
	List<Movie> selectMovieByDimName(String DimName);
	Movie selectMovieInformation(String moviename);
}
