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
@WebServlet("/TypeMovieServlet")
public class TypeMovieServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String movietype = request.getParameter("movietype");
		MovieServiceImpl msi = new MovieServiceImpl();
		List<Movie> list = msi.FindMovieInformationByType(movietype);
		HttpSession session = request.getSession();
		session.setAttribute("typemovie", list);
		response.sendRedirect("/BadBanana/remendianying/genres.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}