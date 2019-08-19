package service.impl;

import bean.User;
import dao.UserDao;
import dao.impl.UserDaoImpl;
import service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public User login(String username, String password) {
		UserDao ud =new UserDaoImpl();
		User user = ud.getUserByUsernameAndPassword(username,password);
		if(user!=null) {
			return user;
		}else {
			throw new RuntimeException("用户名/密码错误");
		}
	}

}
