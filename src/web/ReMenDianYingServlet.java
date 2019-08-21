package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import bean.Movie;
import dao.impl.MovieDaoImpl;
import service.MovieService;
import service.impl.MovieServiceImpl;

/**
 * Servlet implementation class ReMenDianYingServlet
 */
@WebServlet("/ReMenDianYingServlet")
public class ReMenDianYingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReMenDianYingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("word");
		MovieDaoImpl mdi=new MovieDaoImpl();
		List<Movie> Movies = mdi.selectMovieByDimName(name);			
		String jsonString = JSON.toJSONString(Movies);
		response.setContentType("text/plain;charset=utf-8");
		response.getWriter().write(jsonString);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
