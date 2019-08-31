package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import bean.CollectionsMoviePath;
import bean.HomeUser;
import bean.MovieComment;
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
//		System.out.println("进来了");
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select cid,userid,username,filmname,fileComment,date \r\n" + 
				"		from(select cid,userid,username,filmname,fileComment,date \r\n" + 
				"		from film_comment \r\n" + 
				"		where username=?) a \r\n" + 
				"		join film_formation b \r\n" + 
				"		on a.filmname=b.moviename\r\n" + 
				"		order by date DESC;";
	
		try {
			List<HomeUser> list = qr.query(sql, new BeanListHandler<HomeUser>(HomeUser.class),homeName);
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

	@Override
	public void deleteCommentByCid(String cid) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="delete from film_comment where cid=?";
		try {
			qr.update(sql,cid);
			//System.out.println("ddddddddddddddddddddddddddddd删除完成！");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void addDianZan(int cid) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="update film_comment set click=click+1 where cid=?";
		try {
			qr.update(sql,cid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void addDianZanInDianZanBiao(String userid, String commentid) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="insert into dianzanbiao values(?,?)";
		try {
			qr.update(sql, userid,commentid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public List<CollectionsMoviePath> findMoviePathByUserid(int userid) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql1="SELECT s.movieid,imgPathOne,f.moviename\r\n" + 
				"		from (SELECT userid,movieid \r\n" + 
				"		from collections \r\n" + 
				"		where userid=?) s \r\n" + 
				"		join film_formation f\r\n" + 
				"		on s.movieid=f.movieid";
		try {
			List<CollectionsMoviePath> list1 = qr.query(sql1, new BeanListHandler<CollectionsMoviePath>(CollectionsMoviePath.class),userid);
			return list1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
