package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.MovieComment;
import bean.User;
import bean.WriteBack;
import service.impl.WriteBackServiceImpl;
@WebServlet("/SaveNewWriteBackServlet")
public class SaveNewWriteBackServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String str = request.getParameter("myWriteBack");
		HttpSession session = request.getSession();
		MovieComment mc = (MovieComment) session.getAttribute("moviecomment");
		User user = (User) session.getAttribute("user");
		WriteBackServiceImpl wbs = new WriteBackServiceImpl();
		WriteBack writeback = new WriteBack();
		writeback.setCid(mc.getCid());
		writeback.setWriteText(str);
		writeback.setDate("2019-8-22");
		writeback.setUserid(user.getUserid());
		writeback.setUsername(user.getUsername());
		wbs.addNewWriteback(writeback);
		response.sendRedirect("/BadBanana/FindWriteBack?cid=" + mc.getCid());
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
