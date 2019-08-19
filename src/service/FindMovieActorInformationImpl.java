package service;

import bean.Actor;
import dao.SelectMovieActorInformationImpl;

public class FindMovieActorInformationImpl implements FindMovieActorInformationService {

	@Override
	public Actor FindMovieActorInformation(String name) {
		SelectMovieActorInformationImpl saii = new SelectMovieActorInformationImpl();
		Actor actor = saii.selectMovieActorInformationDao(name);
		return actor;
	}

}
