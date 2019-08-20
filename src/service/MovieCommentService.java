package service;

import java.util.List;

import bean.MovieComment;

public interface MovieCommentService {
	List<MovieComment> findMovieComment(String moviename);
}
