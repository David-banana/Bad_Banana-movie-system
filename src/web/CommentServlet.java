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

import bean.CollectionsMoviePath;
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
		}else if("getMovieComment".equals(method)){
			getMovieComment(request,response);
		}else if("deleteComment".equals(method)) {
			deleteComment(request,response);
		}
		response.getWriter().write("你好");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void HomeUser(HttpServletRequest request,HttpServletResponse response) { 
		
		String homeName = request.getParameter("homeName");		
		User LoginUser = (User) request.getSession().getAttribute("user");
		boolean judge=false;
		request.getSession().setAttribute("judge", judge);
		
		if(LoginUser!=null) {
			if(homeName.equals(LoginUser.getUsername())) {
				judge=true;
				request.getSession().setAttribute("judge", judge);
			}
		}
		MovieCommentService mcs=new MovieCommentServiceImpl();
		List<HomeUser> list = mcs.findUserByHomename(homeName);
		HomeUser homeUser = list.get(0);
		int userid = homeUser.getUserid();
		
		
		
		
		List<CollectionsMoviePath> moviePath=mcs.findMoviePathByUserid(userid);
		System.out.println("我是moviePath： "+moviePath);
		
		request.getSession().setAttribute("MoviePath", moviePath);
		request.getSession().setAttribute("HomeList", list);
		try {
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
		String comment = request.getParameter("myComment");//获得评论
		if(comment==null) {
			response.sendRedirect("/BadBanana");
		}else {
		MovieComment movieComment = new MovieComment();
		movieComment.setUserid(user.getUserid());
		movieComment.setUsername(user.getUsername());
		movieComment.setFid(movie.getMovieid());
		movieComment.setFilmname(movie.getMoviename());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		movieComment.setDate(sdf.format(new Date()));
		movieComment.setFileComment(comment);
		MovieCommentService msc = new MovieCommentServiceImpl();
		msc.addMovieComment(movieComment);
		response.sendRedirect("/BadBanana/FindMovieInformationServlet?movieid=" + movie.getMovieid());
		}
	}
	
	public void deleteComment(HttpServletRequest request,HttpServletResponse response){
		String cid = request.getParameter("cid");
		String homeName = request.getParameter("username");
		
		MovieCommentService mcs=new MovieCommentServiceImpl();
		mcs.deleteCommentByCid(cid);
		
			try {
				response.sendRedirect("/BadBanana/CommentServlet?method=HomeUser&homeName="+homeName);
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		
		
	}
	
}