package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.Movie;
import service.impl.MovieServiceImpl;
@WebServlet("/IndexMovieInformationIndexServlet")
public class IndexMovieInformationServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieServiceImpl msi = new MovieServiceImpl();
		List<Movie> list = msi.FindAllMovieInformation();
		HttpSession session = request.getSession();
		int a = (int) (Math.random() * 11);
		int b = (int) (Math.random() * 11 + 12);
		session.setAttribute("indexmovieOne", list.get(a));
		session.setAttribute("indexmovieTwo", list.get(b));
		response.sendRedirect("/BadBanana/index/index.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}