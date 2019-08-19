package service.impl;

import bean.User;
import dao.UserDao;
import dao.impl.UserDaoImpl;
import service.UserNameService;

public class UserNameServiceImpl implements UserNameService {

	public boolean register(String username) {
		UserDao ud =new UserDaoImpl();
		User user = ud.getUserByUsername(username);
		if(user==null) {
			return false;
		}else {
			return true;
		}
		

	}

}
