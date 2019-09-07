package dao;

import java.util.List;

import bean.CollectionsMoviePath;
import bean.HomeUser;
import bean.MovieComment;

public interface MovieCommentDao {
	List<MovieComment> selectMovieComment(String moviename);
	List<HomeUser> findUserByHomename(String homeName);
	void addMovieComment(MovieComment movieComment);
	MovieComment selectMovieCommentbyid(int cid);
	void deleteCommentByCid(String cid);
	void addDianZan(int cid);
	//在点赞表中添加点赞
	void addDianZanInDianZanBiao(String userid,String commentid);
	List<CollectionsMoviePath> findMoviePathByUserid(int userid);
	void removeDianZan(int cid);
	void removeDianZanInDianZanBiao(String userid, String commentid);
}
