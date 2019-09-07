package service.impl;

import java.util.List;

import bean.Movie;
import dao.MovieDao;
import dao.impl.MovieDaoImpl;
import service.MovieService;
import service.UserService;
import utils.PageBean;

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

	@Override
	public PageBean findMoviePageBean(String currentPagestr, String pageSizestr) {
		int currentPage = 0;
		int pageSize = 0;
		if(currentPagestr == null) {
			currentPage = 1;
		}else {
			currentPage = Integer.valueOf(currentPagestr);
		}
		
		if(pageSizestr == null) {
			pageSize = 12;
		}else {
			pageSize = Integer.valueOf(pageSizestr);
		}
		int totalCount = md.getCount();
		List<Movie> list = md.selectMovieByPage(currentPage, pageSize);
		PageBean pageBean = new PageBean(totalCount, currentPage, pageSize);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public List<Movie> searchMovies(String moviename) {
		List<Movie> list = md.selectMovieByDimName(moviename);
		return list;
	}
	
	

}
