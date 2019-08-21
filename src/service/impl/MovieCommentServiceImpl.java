package service.impl;

import java.util.List;

import bean.HomeUser;
import bean.MovieComment;
import dao.MovieCommentDao;
import dao.impl.MovieCommentDaoImpl;
import service.MovieCommentService;

public class MovieCommentServiceImpl implements MovieCommentService {
	@Override
	public List<MovieComment> findMovieComment(String moviename) {
		MovieCommentDao mcdi = new MovieCommentDaoImpl();
		List<MovieComment> list = mcdi.selectMovieComment(moviename);
		return list;
	}

	@Override
	public List<HomeUser> findUserByHomename(String homeName) {
		MovieCommentDao mcdi = new MovieCommentDaoImpl();
		List<HomeUser> list = mcdi.findUserByHomename(homeName);
		return list;
	}
	@Override
	public void addMovieComment(MovieComment movieComment) {
		MovieCommentDao mcdi = new MovieCommentDaoImpl();
		mcdi.addMovieComment(movieComment);
	}

	@Override
	public MovieComment findMovieCommentbyid(int cid) {
		MovieCommentDao mcdi = new MovieCommentDaoImpl();
		MovieComment mc = mcdi.selectMovieCommentbyid(cid);
		return mc;
	}
}
