package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Actor;
import bean.Movie;
import bean.MovieComment;
import service.ActorService;
import service.MovieCommentService;
import service.MovieService;
import service.impl.ActorServiceImpl;
import service.impl.MovieCommentServiceImpl;
import service.impl.MovieServiceImpl;
@WebServlet("/FindMovieInformationServlet")
public class FindMovieInformationServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String moviename = "哥斯拉";
		MovieService ms = new MovieServiceImpl();
		
		Movie movie = ms.FindMovieInformation(moviename);
		HttpSession session = request.getSession();
		session.setAttribute("movie", movie);
		ActorService as = new ActorServiceImpl();
		Actor actor1 = as.FindMovieActorInformation(movie.getActorone());
		Actor actor2 = as.FindMovieActorInformation(movie.getActortwo());
		Actor actor3 = as.FindMovieActorInformation(movie.getActorthree());
		session.setAttribute("actor1", actor1);
		session.setAttribute("actor2", actor2);
		session.setAttribute("actor3", actor3);
		MovieCommentService mcs = new MovieCommentServiceImpl();
		List<MovieComment> list = mcs.findMovieComment(movie.getMoviename());
		System.out.println(list);
		session.setAttribute("MovieComment", list);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}