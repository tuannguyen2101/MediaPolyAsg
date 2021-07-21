package edu.poly.site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.VideoDAO;
import edu.poly.model.Video;

/**
 * Servlet implementation class HomePageServlet
 */
@WebServlet("/Home")
public class HomePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			VideoDAO dao = new VideoDAO();
			
			List<Video> list = dao.findAll();
			request.setAttribute("videos", list);
		} catch (Exception e) {
			e.printStackTrace();
			
			request.setAttribute("error", "Error: " + e.getMessage());
		}
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_HOME_PAGE);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
