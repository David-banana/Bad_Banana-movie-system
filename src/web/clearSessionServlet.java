package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Movie;

/**
 * Servlet implementation class clearSessionServlet
 */
@WebServlet("/clearSessionServlet")
public class clearSessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clearSessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getParameter("quitPath");
		request.getSession().removeAttribute("user");
		Cookie[] cookies=request.getCookies();
		for(Cookie cookie: cookies){
		cookie.setMaxAge(0);
		cookie.setPath(request.getContextPath());
		response.addCookie(cookie);
		if("remendianying".equals(path)) {
			response.sendRedirect("/BadBanana/FindAllMovieInformationServlet");
		}else if("index".equals(path)) {
			response.sendRedirect("/BadBanana/IndexMovieInformationIndexServlet");
		}else if("moviesingle".equals(path)) {
			Movie movie = (Movie) request.getSession().getAttribute("movie");
//			System.out.println(movie);
			response.sendRedirect("/BadBanana/FindMovieInformationServlet?movieid="+movie.getMovieid());
		}
		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
