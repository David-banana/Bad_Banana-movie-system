package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

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

}
