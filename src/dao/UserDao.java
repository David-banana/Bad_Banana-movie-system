package dao;

import bean.User;

public interface UserDao {

	User getUserByUsernameAndPassword(String username, String password);

}
