package service;

import bean.Movie;
import dao.SelectMovieInformationImpl;

public class FindMovieInformationImpl implements FindMovieInformationService {

	@Override
	public Movie FindMovieInformation(String moviename) {
		SelectMovieInformationImpl sii = new SelectMovieInformationImpl();
		Movie movie = sii.selectMovieInformation(moviename);
		return movie;
	}


}
