package dao;

import bean.User;

public interface UserDao {

	User getUserByUsernameAndPassword(String username, String password);
	void addUser(User user);
	User getUserByUsername(String username);
}
