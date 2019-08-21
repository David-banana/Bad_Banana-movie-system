package service;

import java.util.List;

import bean.HomeUser;
import bean.MovieComment;

public interface MovieCommentService {
	List<MovieComment> findMovieComment(String moviename);

	List<HomeUser> findUserByHomename(String homeName);
	void addMovieComment(MovieComment movieComment);
}
