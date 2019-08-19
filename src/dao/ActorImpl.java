package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import bean.Actor;
import utils.DataSourceUtils;

public class ActorImpl implements ActorDao {

	@Override
	public Actor selectMovieActorInformationDao(String name) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from actor where name = ?";
		try {
			Actor actor = qr.query(sql, new BeanHandler<Actor>(Actor.class),name);
			return actor;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
