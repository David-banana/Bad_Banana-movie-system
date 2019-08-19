package service;

import bean.User;

public interface UserService {

	User login(String username, String password);

}
