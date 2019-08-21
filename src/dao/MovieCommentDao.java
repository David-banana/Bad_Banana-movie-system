package dao;

import java.util.List;

import bean.MovieComment;

public interface MovieCommentDao {
	List<MovieComment> selectMovieComment(String moviename);
	
}
