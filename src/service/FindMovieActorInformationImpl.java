package service;

import bean.Actor;
import dao.ActorImpl;

public class FindMovieActorInformationImpl implements FindMovieActorInformationService {

	@Override
	public Actor FindMovieActorInformation(String name) {
		ActorImpl saii = new ActorImpl();
		Actor actor = saii.selectMovieActorInformationDao(name);
		return actor;
	}

}
