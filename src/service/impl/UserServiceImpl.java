package service.impl;

import bean.MovieCollections;
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

	@Override
	public User findUserHome(String username) {
		User user = ud.findUserInformationByUsername(username);
		return user;
	}

	@Override
	public boolean checkDianZan(String userid, String commentid) {
		return ud.checkDianZan(userid, commentid);
	}

	@Override
	public void collection(String userid, String movieid) {
		ud.addCollection(userid, movieid);
	}

	@Override
	public boolean checkIsCollection(Integer userid, Integer movieid) {
		MovieCollections collection = ud.findCollectionByUseridAndMovieid(userid, movieid);
//		System.out.println(collection);
		if(collection == null) {
			return false;
		}else {
			return true;
		}
	}

	@Override
	public void cancelCollection(String userid, String movieid) {
		ud.deleteCollectionByUserIdAndMovieId(userid,movieid);
	}



}
