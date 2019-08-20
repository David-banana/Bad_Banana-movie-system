package utils;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.User;
import service.UserService;
import service.impl.UserServiceImpl;


@WebFilter("/*")
public class AutoLoginFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		// jpg css js png html login.jsp
		// 1.通过请求路径，将以上选项排除 - 不影响大局
		String uri = req.getRequestURI();
		// 登录之前先判断有没有登录过
		if (req.getSession().getAttribute("user") == null) {
			// 1.接收请求，获得参数 - Cookie
			Cookie[] cookies = req.getCookies();
			String username = null;
			String password = null;
			if (cookies != null) {
				// 2.从cookie中找到用户名和密码
				for (Cookie c : cookies) {
					if (c.getName().equals("username")) {
						username = c.getValue();
						// URLDecoder.decode(username, "UTF-8");
					}
					if (c.getName().equals("password")) {
						password = c.getValue();
					}
				}
			}
			// 3.登录操作 - 参考LoginServlet
			if (username != null && password != null) {
				UserService us = new UserServiceImpl();
				try {
					User user = us.login(username, password);
					req.getSession().setAttribute("user", user);
				} catch (Exception e) {
				}
			}
		}
		// 4.不论是否登录成功，都放行
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
