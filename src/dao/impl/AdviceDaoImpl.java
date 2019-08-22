package dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import bean.Advice;
import dao.AdviceDao;
import utils.DataSourceUtils;

public class AdviceDaoImpl implements AdviceDao{

	@Override
	public void addAdvice(Advice advice) {
		QueryRunner qu = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into advice values(null,?,?,?,?,?,?)";
		try {
			qu.update(sql, advice.getUserid(),advice.getName(),advice.getEmail(),advice.getPhone(),advice.getAddress(),advice.getAdvice());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
