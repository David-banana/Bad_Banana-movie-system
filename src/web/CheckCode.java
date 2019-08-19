package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CheckCode")
public class CheckCode extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String checkCode = request.getParameter("checkcode");
		System.out.println(checkCode);
		HttpSession session = request.getSession();
		String checkcode_session = (String) session.getAttribute("checkcode_session");
		response.setContentType("text/plain;charset=utf-8");
		if (checkcode_session.equals(checkCode)) {
			response.getWriter().write("{\"massage\":\"校验成功\"}");
			System.out.println(1111);
		} else {
			response.getWriter().write("{\"massage\":\"校验失败\"}");
			System.out.println(2222);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}