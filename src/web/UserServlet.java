package web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import bean.User;
import service.UserService;
import service.impl.UserServiceImpl;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		if ("login".equals(method)) {
			login(request, response);
		} else if ("checkUser".equals(method)) {
			checkUser(request, response);
		}else if("register".equals(method)) {
			Register(request, response);
		}else if("checkCode".equals(method)) {
			checkCode(request,response);
		}else if("userHome".equals(method)) {
			userHome(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	//登录
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getParameter("path");//发送请求的地址
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		UserService us = new UserServiceImpl();
		//判断时间
		Date d = new Date();
		int hours = d.getHours();
		System.out.println(hours);
		if (hours < 12) {
			request.getSession().setAttribute("time", "上午好");
		} else if (hours < 18) {
			request.getSession().setAttribute("time", "下午好");
		} else {
			request.getSession().setAttribute("time", "晚上好");
		}
		try {
			User user = us.login(username, password);
			//判断自动登录按钮是否被勾选
			String auto = request.getParameter("autoLogin");
			if ("on".equals(auto)) {
				// 保存账号密码到cookie
				Cookie nameCookie = new Cookie("username", username);
				Cookie pwdCookie = new Cookie("password", password);

				nameCookie.setMaxAge(Integer.MAX_VALUE);
				pwdCookie.setMaxAge(Integer.MAX_VALUE);
				nameCookie.setPath(request.getContextPath());
				pwdCookie.setPath(request.getContextPath());

				response.addCookie(nameCookie);
				response.addCookie(pwdCookie);
			}
			request.getSession().setAttribute("user", user);
			if(path==null) {
				response.sendRedirect("/BadBanana/");
			}else {
			response.sendRedirect("/BadBanana/"+path);
			}
		} catch (Exception e) {
			request.setAttribute("message", e.getMessage());
			request.getRequestDispatcher("/loginandregister/login.jsp").forward(request, response);
		}
	}
	//注册
	protected void Register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user=new User();
		Map<String, String[]> parameterMap = request.getParameterMap();

		request.setCharacterEncoding("UTF-8");
		try {
			BeanUtils.populate(user, request.getParameterMap());
			UserService us=new UserServiceImpl();
			us.register(user);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		response.sendRedirect("/BadBanana");
	}
	//检查用户名是否存在
	protected void checkUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		UserService usi=new UserServiceImpl();
		boolean iscunzai = usi.usernameIsEixst(username);
		response.setContentType("text/plain;charset=utf-8");
		// {"isExists": isExists}
		response.getWriter().write("{\"isExists\": "+iscunzai+"}");
	}
	//检查验证码是否正确
	public void checkCode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String checkCode = request.getParameter("checkcode");
		//System.out.println(checkCode);
		HttpSession session = request.getSession();
		String checkcode_session = (String) session.getAttribute("checkcode_session");
		boolean equals = checkcode_session.equals(checkCode);
		response.setContentType("text/plain;charset=utf-8");
		// {"isExists": isExists}
		response.getWriter().write("{\"isExists\": "+equals+"}");
	}
	//获取个人主页
		private void userHome(HttpServletRequest request, HttpServletResponse response) {
			String homeName = request.getParameter("homeName");
			System.out.println(homeName);
			UserService us=new UserServiceImpl();
			User user = us.findUserHome(homeName);
			System.out.println(user);
			request.getSession().setAttribute("homeUser", user);
				try {
					response.sendRedirect("/BadBanana/personalHomepage/personalHome.jsp");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

		}
}
