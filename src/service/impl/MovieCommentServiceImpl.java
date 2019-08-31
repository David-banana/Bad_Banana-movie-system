package service.impl;

import java.util.List;

import bean.CollectionsMoviePath;
import bean.HomeUser;
import bean.MovieComment;
import dao.MovieCommentDao;
import dao.impl.MovieCommentDaoImpl;
import service.MovieCommentService;

public class MovieCommentServiceImpl implements MovieCommentService {
	private MovieCommentDao mcd=new MovieCommentDaoImpl();
	@Override
	public List<MovieComment> findMovieComment(String moviename) {
		List<MovieComment> list = mcd.selectMovieComment(moviename);
		return list;
	}

	@Override
	public List<HomeUser> findUserByHomename(String homeName) {
		List<HomeUser> list = mcd.findUserByHomename(homeName);
		return list;
	}
	@Override
	public void addMovieComment(MovieComment movieComment) {
		mcd.addMovieComment(movieComment);
	}

	@Override
	public MovieComment findMovieCommentbyid(int cid) {
		MovieComment mc = mcd.selectMovieCommentbyid(cid);
		return mc;
	}

	@Override
	public void deleteCommentByCid(String cid) {
		mcd.deleteCommentByCid(cid);
	}

	@Override
	public void addDianZanInDianZanBiao(String userid, String commentid) {
		mcd.addDianZanInDianZanBiao(userid, commentid);
	}

	@Override
	public void addDianZan(int cid) {
		mcd.addDianZan(cid);
	}

	@Override
	public List<CollectionsMoviePath> findMoviePathByUserid(int userid) {
		List<CollectionsMoviePath> list=mcd.findMoviePathByUserid(userid);	
		return list;
	}
}
