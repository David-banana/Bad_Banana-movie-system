package dao;

import java.util.Collection;

import bean.MovieCollections;
import bean.User;

public interface UserDao {

	User getUserByUsernameAndPassword(String username, String password);
	void addUser(User user);
	User getUserByUsername(String username);
	//个人主页
	User findUserInformationByUsername(String username);
	//检查用户是否点过赞
	boolean checkDianZan(String userid,String commentid);
	//收藏功能
	void addCollection(String userid,String movieid);
	//检查用户是否收藏该电影
	MovieCollections findCollectionByUseridAndMovieid(Integer userid,Integer movieid);
	//取消收藏
	void deleteCollectionByUserIdAndMovieId(String userid, String movieid);
}
