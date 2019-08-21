package dao;

import java.util.List;

import bean.HomeUser;
import bean.MovieComment;

public interface MovieCommentDao {
	List<MovieComment> selectMovieComment(String moviename);
	List<HomeUser> findUserByHomename(String homeName);
}
