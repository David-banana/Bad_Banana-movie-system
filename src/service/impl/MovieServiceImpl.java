package service.impl;

import java.util.List;

import bean.Movie;
import dao.MovieDao;
import dao.impl.MovieDaoImpl;
import service.MovieService;
import service.UserService;

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

	@Override
	public List<Movie> FindHotMovieInformation() {
		List<Movie> list = md.selectHotMovieInformation();
		return list;
	}
	@Override
	public boolean checkMovieIsCollection(Integer userid, Integer movieid) {
		UserService us =new UserServiceImpl();
		boolean isCollection = us.checkIsCollection(userid, movieid);
		return isCollection;
	}
	
	

}
