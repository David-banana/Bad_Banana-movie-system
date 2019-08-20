package service;

import java.util.List;

import bean.Movie;

public interface MovieService {
	Movie FindMovieInformation(String moviename);
	List<Movie> FindAllMovieInformation();
}
