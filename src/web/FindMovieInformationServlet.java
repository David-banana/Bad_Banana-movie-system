package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Actor;
import bean.Movie;
import service.FindMovieActorInformationImpl;
import service.FindMovieInformationImpl;
@WebServlet("/FindMovieInformationServlet")
public class FindMovieInformationServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String moviename = "哥斯拉";
		FindMovieInformationImpl fmii = new FindMovieInformationImpl();
		Movie movie = fmii.FindMovieInformation(moviename);
		HttpSession session = request.getSession();
		session.setAttribute("movie", movie);
		FindMovieActorInformationImpl faii = new FindMovieActorInformationImpl();
		Actor actor1 = faii.FindMovieActorInformation(movie.getActorone());
		Actor actor2 = faii.FindMovieActorInformation(movie.getActortwo());
		Actor actor3 = faii.FindMovieActorInformation(movie.getActorthree());
		session.setAttribute("actor1", actor1);
		session.setAttribute("actor2", actor2);
		session.setAttribute("actor3", actor3);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}