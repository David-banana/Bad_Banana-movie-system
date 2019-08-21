package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import bean.HomeUser;
import bean.MovieComment;
import bean.User;
import dao.MovieCommentDao;
import utils.DataSourceUtils;

public class MovieCommentDaoImpl implements MovieCommentDao {

	@Override
	public List<MovieComment> selectMovieComment(String moviename) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from film_comment where filmname = ?";
		try {
			List<MovieComment> list = qr.query(sql, new BeanListHandler<MovieComment>(MovieComment.class),moviename);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<HomeUser> findUserByHomename(String homeName) {
		System.out.println("进来了");
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select username,filmname,fileComment,imgPathOne,date "
				+ "from(select username,filmname,fileComment,date "
				+ "from film_comment "
				+ "where username=?) a "
				+ "join film_formation b "
				+ "on a.filmname=b.moviename";
	
		try {
			List<HomeUser> list = qr.query(sql, new BeanListHandler<HomeUser>(HomeUser.class),homeName);
			System.out.println("---"+list+"---");
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public void addMovieComment(MovieComment movieComment) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="insert into film_comment values(null,?,?,?,?,?,?,?)";
		try {
			qr.update(sql,movieComment.getUserid(),movieComment.getUsername(),movieComment.getFid(),movieComment.getFilmname(),movieComment.getDate(),movieComment.getFileComment(),movieComment.getClick());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public MovieComment selectMovieCommentbyid(int cid) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from film_comment where cid = ?";
		try {
			MovieComment wc = qr.query(sql, new BeanHandler<MovieComment>(MovieComment.class),cid);
			return wc;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
