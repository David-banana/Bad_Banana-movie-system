package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UserService;
import service.impl.UserServiceImpl;
@WebServlet("/CollectionServlet")
public class CollectionServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if("collection".equals(method)) {
			collection(request, response);
		}else if("cancelCollection".equals(method)) {
			cancelCollection(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	public void collection(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String movieid = request.getParameter("movieid");
		String userid = request.getParameter("userid");
		UserService us = new UserServiceImpl();
		us.collection(userid, movieid);
		//{"meth":0}
		response.getWriter().write("{\"meth\":1}");
	}
	public void cancelCollection(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String movieid = request.getParameter("movieid");
		String userid = request.getParameter("userid");
		UserService us = new UserServiceImpl();
		us.cancelCollection(userid, movieid);
		if("Home".equals(request.getParameter("method2"))) {
			String username = request.getParameter("username");
			System.out.println(username);
			response.sendRedirect("/BadBanana/CommentServlet?homeName="+username+"&method=HomeUser");
		}else {
			response.getWriter().write("{\"meth\":0}");
		}
	}
}