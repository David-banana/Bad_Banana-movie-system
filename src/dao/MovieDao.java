package dao;

import bean.Movie;

public interface MovieDao {
	Movie selectMovieInformation(String moviename);
}
