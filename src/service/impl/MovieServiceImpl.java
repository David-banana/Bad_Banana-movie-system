package service.impl;

import bean.Movie;
import dao.MovieDao;
import dao.impl.MovieDaoImpl;
import service.MovieService;

public class MovieServiceImpl implements MovieService {

	@Override
	public Movie FindMovieInformation(String moviename) {
		MovieDao md = new MovieDaoImpl();
		Movie movie = md.selectMovieInformation(moviename);
		return movie;
	}

}
