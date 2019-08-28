package service.impl;

import java.util.List;

import bean.Movie;
import dao.MovieDao;
import dao.impl.MovieDaoImpl;
import service.MovieService;

public class MovieServiceImpl implements MovieService {
	MovieDao md = new MovieDaoImpl();
	@Override
	public Movie FindMovieInformation(int movieid) {
		Movie movie = md.selectMovieInformation(movieid);
		return movie;
	}

	@Override
	public List<Movie> FindAllMovieInformation() {
		List<Movie> list = md.selecctAllMovieInformation();
		return list;
	}

	@Override
	public Movie FindMovieInformation(String moviename) {
		Movie movie = md.selectMovieInformation(moviename);
		return movie;
	}

	@Override
	public List<Movie> FindMovieInformationByType(String movietype) {
		List<Movie> list = md.selectMovieInformationByType(movietype);
		return list;
	}

}
