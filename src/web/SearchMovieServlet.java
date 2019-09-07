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
import service.MovieService;
import service.impl.MovieServiceImpl;

@WebServlet("/SearchMovieServlet")
public class SearchMovieServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieService ms = new MovieServiceImpl();
		String moviename = request.getParameter("moviename");
		List<Movie> movies = ms.searchMovies(moviename);
		System.out.println(movies);
		HttpSession session = request.getSession();
		session.setAttribute("typemovie", movies);
		session.setAttribute("ori","搜索" );
		response.sendRedirect(request.getContextPath()+"/remendianying/genres.jsp");
//		request.getRequestDispatcher("/remendianying/genres.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}