package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.HomeUser;
import service.MovieCommentService;
import service.impl.MovieCommentServiceImpl;

@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if("HomeUser".equals(method)) {
			HomeUser(request,response);
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
	
	
	
	
}