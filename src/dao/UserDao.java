package dao;

import bean.User;

public interface UserDao {

	User getUserByUsernameAndPassword(String username, String password);
	void addUser(User user);
	User getUserByUsername(String username);
	//个人主页
	User findUserInformationByUsername(String username);
	//检查用户是否点过赞
	boolean checkDianZan(String userid,String commentid);
	
}
