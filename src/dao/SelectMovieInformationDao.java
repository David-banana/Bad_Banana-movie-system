package dao;

import bean.Movie;

public interface SelectMovieInformationDao {
	Movie selectMovieInformation(String moviename);
}
