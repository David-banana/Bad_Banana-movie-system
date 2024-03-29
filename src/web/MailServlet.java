package web;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Advice;
import bean.User;
import service.AdviceService;
import service.impl.AdviceServiceImpl;
import utils.Mail;

/**
 * Servlet implementation class MailServlet
 */
@WebServlet("/MailServlet")
public class MailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdviceService ad = new AdviceServiceImpl();
		User user = (User) request.getSession().getAttribute("user");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		  String message = request.getParameter("advice"); 
		  Advice advice = new Advice(); 
		  advice.setUserid(user.getUserid()); 
		  advice.setAdvice(message);
		  advice.setName(name);
		  advice.setEmail(email);
		  advice.setAddress(address);
		  ad.UserAdvice(advice); 
		  
		  Mail mail=new Mail(); 
//		System.out.println(email);
		try {
			mail.sendMail(email, "烂香蕉客服", "感谢您提供的宝贵意见，我们为提供意见的客户准备了精密礼品，请点击链接领取, <a href='http://www.taobao.com'>礼品链接</a>");
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		response.sendRedirect("/BadBanana");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
