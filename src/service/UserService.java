package service;

import bean.User;

public interface UserService {

	User login(String username, String password);
	void register(User user);
	boolean usernameIsEixst(String username);
}
