package service;

import java.util.List;

import bean.CollectionsMoviePath;
import bean.HomeUser;
import bean.MovieComment;

public interface MovieCommentService {
	List<MovieComment> findMovieComment(String moviename);
	List<HomeUser> findUserByHomename(String homeName);
	void addMovieComment(MovieComment movieComment);
	MovieComment findMovieCommentbyid(int cid);
	void deleteCommentByCid(String cid);
	void addDianZan(int cid);
	void addDianZanInDianZanBiao(String userid,String commentid);
	List<CollectionsMoviePath> findMoviePathByUserid(int userid);
}
