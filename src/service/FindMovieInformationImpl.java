package service;

import bean.Movie;
import dao.MovieImpl;

public class FindMovieInformationImpl implements FindMovieInformationService {

	@Override
	public Movie FindMovieInformation(String moviename) {
		MovieImpl sii = new MovieImpl();
		Movie movie = sii.selectMovieInformation(moviename);
		return movie;
	}
}
