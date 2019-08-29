package dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ColumnListHandler;

import bean.MovieCollections;
import bean.User;
import dao.UserDao;
import utils.DataSourceUtils;

public class UserDaoImpl implements UserDao {
	private static DataSource ds;
	private static QueryRunner qu;
	static {
		ds = DataSourceUtils.getDataSource();
		qu = new QueryRunner(ds);
	}
	@Override
	public User getUserByUsernameAndPassword(String username, String password) {
		String sql = "select * from user where username= ? and password = ?";
		try {
			User user = qu.query(sql, new BeanHandler<User>(User.class),username,password);
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public void addUser(User user) {
		String sql="insert into user values(null,?,?,?,?,?,?)";
		try {
			qu.update(sql,user.getUsername(),user.getSex(),user.getPassword(),user.getEmail(),user.getPhone(),user.getAddress());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	@Override
	public User getUserByUsername(String username) {
		String sql = "select * from user where username= ?";
		try {
			User user = qu.query(sql, new BeanHandler<User>(User.class),username);
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}
	@Override
	public User findUserInformationByUsername(String username) {
		String sql="select * from user where username=?";
		try {
			User user = qu.query(sql, new BeanHandler<User>(User.class),username);
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		return null;
	}
	@Override
	public boolean checkDianZan(String userid,String commentid) {
		String sql="select commentid from dianzanbiao where userid=?";
		List<Object> list=new ArrayList<Object>();
		try {
			list = qu.query(sql, new ColumnListHandler(),userid);
//			System.out.println(list);
			if(list.size()==0) {
				return false;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		boolean contains=false;
		for(int i=0;i<list.size();i++) {
			if(list.get(i).equals(commentid)) {
				contains=true;
				break;
			}
		}
		
//		System.out.println(contains);
		return  contains;
	}
	@Override
	public void addCollection(String userid, String movieid) {
		String sql = "insert into collections values(?,?)";
		try {
			qu.update(sql,Integer.valueOf(userid),Integer.valueOf(movieid));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public MovieCollections findCollectionByUseridAndMovieid(Integer userid, Integer movieid) {
		String sql = "select * from collections where userid=? and movieid=?";
		try {
			MovieCollections collection = qu.query(sql, new BeanHandler<MovieCollections>(MovieCollections.class),userid,movieid);
			return collection;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public void deleteCollectionByUserIdAndMovieId(String userid, String movieid) {
		String sql = "delete from collections where userid=? and movieid=?";
		try {
			qu.update(sql,userid,movieid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


}
