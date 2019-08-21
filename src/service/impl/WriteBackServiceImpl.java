package service.impl;

import java.util.List;

import bean.WriteBack;
import dao.impl.WriteBackDaoImpl;
import service.WriteBackService;

public class WriteBackServiceImpl implements WriteBackService {

	@Override
	public List<WriteBack> findWriteback(int cid) {
		WriteBackDaoImpl wdi = new WriteBackDaoImpl();
		List<WriteBack> list = wdi.selectWriteBack(cid);
		
		return list;
	}

}
