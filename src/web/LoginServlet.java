package web;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.User;
import service.UserService;
import service.impl.UserServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		

		UserService us = new UserServiceImpl();
		try {
		User user = us.login(username,password);
		Date d = new Date();
		int hours = d.getHours();
		if(hours<12) {
			request.getSession().setAttribute("time","上午好");		
		}else if(hours<18){
			request.getSession().setAttribute("time","下午好");	
		}else {
			request.getSession().setAttribute("time","晚上好");	
		}
		request.getSession().setAttribute("user",user);
		response.sendRedirect("/BadBanana");
		}catch (Exception e ){
			request.setAttribute("message", e.getMessage());
			request.getRequestDispatcher("/loginandregister/login.jsp").forward(request, response);
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
