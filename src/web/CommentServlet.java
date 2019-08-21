package web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.HomeUser;
import bean.Movie;
import bean.MovieComment;
import bean.User;
import service.MovieCommentService;
import service.impl.MovieCommentServiceImpl;

@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if("HomeUser".equals(method)) {
			HomeUser(request,response);
		}if("getMovieComment".equals(method)){
			getMovieComment(request,response);
		}
		response.getWriter().write("hello Bonnie...");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void HomeUser(HttpServletRequest request,HttpServletResponse response) {
		String homeName = request.getParameter("homeName");
		System.out.println("homeName"+homeName);
		MovieCommentService mcs=new MovieCommentServiceImpl();
		List<HomeUser> list = mcs.findUserByHomename(homeName);
		System.out.println("homeUser "+list);
		request.getSession().setAttribute("HomeList", list);
		try {
			//request.getRequestDispatcher("/personalHomepage/personalHome.jsp").forward(request, response);
			response.sendRedirect("/BadBanana/personalHomepage/personalHome.jsp");
		}  catch (IOException e) {
			e.printStackTrace();
		} 
		
		
		
	}
	
	protected void getMovieComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");//获得目前登录用户
		Movie movie = (Movie) session.getAttribute("movie");//获得评论电影
//		System.out.println(user+" "+movie);
		String comment = request.getParameter("myComment");//获得评论
		if(comment==null) {
			response.sendRedirect("/BadBanana");
		}else {
		MovieComment movieComment = new MovieComment();
		movieComment.setUserid(user.getUserid());
		movieComment.setUsername(user.getUsername());
		movieComment.setUsername(user.getUsername());
		movieComment.setFid(movie.getMovieid());
		movieComment.setFilmname(movie.getMoviename());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		movieComment.setDate(sdf.format(new Date()));
		movieComment.setFileComment(comment);
		MovieCommentService msc = new MovieCommentServiceImpl();
		msc.addMovieComment(movieComment);
		response.sendRedirect("/BadBanana");
		}
//		System.out.println(comment);
	}
	
	
	
}