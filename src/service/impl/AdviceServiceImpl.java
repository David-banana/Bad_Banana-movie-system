package service.impl;

import bean.Advice;
import dao.AdviceDao;
import dao.impl.AdviceDaoImpl;
import service.AdviceService;

public class AdviceServiceImpl implements AdviceService {

	@Override
	public void UserAdvice(Advice advice) {
		AdviceDao ad = new AdviceDaoImpl();
		ad.addAdvice(advice);
	}

}
