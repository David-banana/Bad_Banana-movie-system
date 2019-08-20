package dao;

import java.util.List;

import bean.Movie;

public interface MovieDao {
	Movie selectMovieInformation(String moviename);
	List<Movie> selecctAllMovieInformation();
}
