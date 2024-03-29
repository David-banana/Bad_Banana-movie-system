package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.MovieComment;
import service.MovieCommentService;
import service.UserService;
import service.impl.MovieCommentServiceImpl;
import service.impl.UserServiceImpl;

@WebServlet("/DianZanServlet")
public class DianZanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DianZanServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService us=new UserServiceImpl();
		String filmcid = request.getParameter("filmcid");
		String userid = request.getParameter("userid");
		String commentid=filmcid;
		int cid = Integer.valueOf(filmcid);
		boolean checkDianZan = us.checkDianZan(userid, commentid);
		if(checkDianZan==false) {
			MovieCommentService mcs=new MovieCommentServiceImpl();
			mcs.addDianZanInDianZanBiao(userid, commentid);
			mcs.addDianZan(cid);	
		}else if(checkDianZan==true) {
			MovieCommentService mcs=new MovieCommentServiceImpl();
			mcs.removeDianZanInDianZanBiao(userid,commentid);
			mcs.removeDianZan(cid);
		}
		MovieCommentService mcs = new MovieCommentServiceImpl();
		MovieComment mc = mcs.findMovieCommentbyid(cid);
		int click = mc.getClick();
		response.setContentType("text/plain;charset=utf-8");
		// {"dianzanshu": isExists,"isDianZan":isExists}
		response.getWriter().write("{\"dianzanshu\": "+click+",\"isDianZan\":"+checkDianZan+"}");

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
