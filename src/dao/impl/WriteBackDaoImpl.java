package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import bean.WriteBack;
import dao.WriteBackDao;
import utils.DataSourceUtils;

public class WriteBackDaoImpl implements WriteBackDao {

	@Override
	public List<WriteBack> selectWriteBack(int cid) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from writeback where cid = ?";
		try {
			List<WriteBack> wb = qr.query(sql, new BeanListHandler<WriteBack>(WriteBack.class),cid);
			return wb;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void addNewWriteBack(WriteBack writeback) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into writeback(cid,writetext,date,userid,username) values(?,?,?,?,?)";
		try {
			qr.update(sql,writeback.getCid(),writeback.getWriteText(),writeback.getDate(),writeback.getUserid(),writeback.getUsername());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
