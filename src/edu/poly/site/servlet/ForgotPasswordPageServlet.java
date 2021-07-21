package edu.poly.site.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.EmailUtils;
import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.UserDao;
import edu.poly.domain.Email;
import edu.poly.model.User;

/**
 * Servlet implementation class HomePageServlet
 */
@WebServlet("/ForgotPassword")
public class ForgotPasswordPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_FORGOT_PASSWORD_PAGE);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String emailAddress = request.getParameter("email");
			String username = request.getParameter("username");

			UserDao dao = new UserDao();
			User user = dao.findByUsernameAndEmail(username, emailAddress);

			if (user == null) {
				request.setAttribute("error", "Username or email are incorect");
			} else {
				Email email = new Email();
				email.setFrom("tuannnph12028@fpt.edu.vn");
				email.setFromPassword("VeaFryxrekmook3");
				email.setTo(emailAddress);
				email.setSubject("Forgot password Function");
				StringBuilder sb = new StringBuilder();
				sb.append("Dear ").append(username).append("<br>");
				sb.append("You are used the forgot password function. <br>");
				sb.append("You password is: <b>").append(user.getPassword()).append("</b> ");
				sb.append("<br>Regards<br>");
				sb.append("Administration");

				email.setContent(sb.toString());
				EmailUtils.send(email);

				request.setAttribute("message", "Email sent to the email address. Please check and get your password");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}

		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_FORGOT_PASSWORD_PAGE);
	}

}
