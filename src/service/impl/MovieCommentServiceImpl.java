package service.impl;

import java.util.List;

import bean.MovieComment;
import dao.impl.MovieCommentDaoImpl;
import service.MovieCommentService;

public class MovieCommentServiceImpl implements MovieCommentService {
	@Override
	public List<MovieComment> findMovieComment(String moviename) {
		MovieCommentDaoImpl mcdi = new MovieCommentDaoImpl();
		List<MovieComment> list = mcdi.selectMovieComment(moviename);
		return list;
	}

}
