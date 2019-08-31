package service;

import java.util.List;

import bean.Movie;
import utils.PageBean;

public interface MovieService {
	Movie FindMovieInformation(int movieid);
	List<Movie> FindAllMovieInformation();
	Movie FindMovieInformation(String moviename);
	List<Movie> FindMovieInformationByType(String movietype);
	List<Movie> FindHotMovieInformation();
	boolean checkMovieIsCollection(Integer userid,Integer movieid);
	PageBean findMoviePageBean(String currentPage, String pageSize);
}
