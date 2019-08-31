package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.sun.org.apache.bcel.internal.generic.NEW;

import bean.Movie;
import dao.MovieDao;
import utils.DataSourceUtils;

public class MovieDaoImpl implements MovieDao {

	@Override
	public Movie selectMovieInformation(int movieid) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from film_formation where movieid = ?";
		try {
			Movie movie = qr.query(sql, new BeanHandler<Movie>(Movie.class),movieid);
			return movie;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public List<Movie> selecctAllMovieInformation() {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from film_formation";
		try {
			List<Movie> list = qr.query(sql, new BeanListHandler<Movie>(Movie.class));
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Movie> selectMovieByDimName(String DimName) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from film_formation where moviename like ?";
		List<Movie> list;
		try {
			list = qr.query(sql, new BeanListHandler<Movie>(Movie.class),"%"+DimName+"%");
			return  list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}

	@Override
	public Movie selectMovieInformation(String moviename) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from film_formation where moviename = ?";
		try {
			Movie movie = qr.query(sql, new BeanHandler<Movie>(Movie.class),moviename);
			return movie;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public List<Movie> selectMovieInformationByType(String movietype) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from film_formation where movietype = ?";
		try {
			List<Movie> list = qr.query(sql, new BeanListHandler<Movie>(Movie.class),movietype);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public List<Movie> selectHotMovieInformation() {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select fid,filmname,count(fid) fidcount from film_comment GROUP BY fid ORDER BY fidcount desc limit 2;";
		List<Movie> list;
		try {
			list = qr.query(sql, new BeanListHandler<Movie>(Movie.class));
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Movie> selectMovieByPage(int currentPage, int pageSize) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from film_formation limit ?,?";
		int startRow = (currentPage - 1)* pageSize;
		try {
			return qr.query(sql, new BeanListHandler<Movie>(Movie.class),startRow,pageSize);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}

	@Override
	public int getCount() {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(1) from film_formation";
		try {
			long count = (long) qr.query(sql, new ScalarHandler());
			return (int)count;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	
}
