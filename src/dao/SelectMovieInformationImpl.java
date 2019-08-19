package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import bean.Movie;
import utils.DataSourceUtils;

public class SelectMovieInformationImpl implements SelectMovieInformationDao {

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

}
