package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.MovieComment;
import bean.User;
import bean.WriteBack;
import service.MovieCommentService;
import service.UserService;
import service.impl.MovieCommentServiceImpl;
import service.impl.UserServiceImpl;
import service.impl.WriteBackServiceImpl;
@WebServlet("/FindWriteBack")
public class FindWriteBack extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strcid = request.getParameter("cid");
		int cid = Integer.valueOf(strcid);
		WriteBackServiceImpl wbi = new WriteBackServiceImpl();
		List<WriteBack> list = wbi.findWriteback(cid);
		MovieCommentService mcs = new MovieCommentServiceImpl();
		MovieComment mc = mcs.findMovieCommentbyid(cid);
		UserService us=new UserServiceImpl();
		User user = (User) request.getSession().getAttribute("user");
		HttpSession session = request.getSession();
		session.setAttribute("writeback", list);
		session.setAttribute("moviecomment", mc);
		boolean checkDianZan = false;
		if(user!=null) {
			checkDianZan = us.checkDianZan(String.valueOf(user.getUserid()), strcid);
		}
		request.getSession().setAttribute("checkDianZan",checkDianZan);
		response.sendRedirect("/BadBanana/huifujiemian/huifujiemian.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}