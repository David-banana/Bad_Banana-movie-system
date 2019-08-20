package service.impl;

import bean.User;
import dao.UserDao;
import dao.impl.UserDaoImpl;
import service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao ud =new UserDaoImpl();

	@Override
	public User login(String username, String password) {
		User user = ud.getUserByUsernameAndPassword(username,password);
		if(user!=null) {
			return user;
		}else {
			throw new RuntimeException("用户名/密码错误");
		}
	}

	@Override
	public void register(User user) {
		ud.addUser(user);
	}

	@Override
	public boolean usernameIsEixst(String username) {
		User user = ud.getUserByUsername(username);
		if(user==null) {
			return false;
		}else {
			return true;
		}
	}



}
