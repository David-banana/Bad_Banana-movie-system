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
		// 3.�Ա����ݣ����ؽ��
		response.setContentType("text/plain;charset=utf-8");
		//{"massage":"У��ɹ�"}
		if (checkcode_session.equals(checkCode)) {
			response.getWriter().write("{\"massage\":\"У��ɹ�\"}");
			System.out.println(1111);
		} else {
			response.getWriter().write("{\"massage\":\"У��ʧ��\"}");
			System.out.println(2222);
		}
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}