package service;

import bean.User;

public interface UserService {

	User login(String username, String password);
	void register(User user);
	boolean usernameIsEixst(String username);
	User findUserHome(String username);
	boolean checkDianZan(String userid,String commentid);
	//收藏电影
	void collection(String userid,String movieid);
	//检查用户是否已经收藏电影
	boolean checkIsCollection(Integer userid,Integer movieid);
	void cancelCollection(String userid, String movieid);
}
