package service.impl;

import bean.Actor;
import bean.Movie;
import dao.ActorDao;
import dao.impl.ActorDaoImpl;
import service.ActorService;

public class ActorServiceImpl implements ActorService {

	@Override
	public Actor FindMovieActorInformation(String name) {
		ActorDao ad = new ActorDaoImpl();
		Actor actor = ad.selectMovieActorInformationDao(name);
		return actor;
	}

}
