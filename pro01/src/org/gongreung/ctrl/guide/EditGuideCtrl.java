package org.gongreung.ctrl.guide;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.gongreung.ctrl.dao.GuideDAO;
import org.gongreung.ctrl.dto.Guide;

@WebServlet("/EditGuide.do")
public class EditGuideCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditGuideCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("sid");
		
		if(!loginId.equals("admin")) {
			response.sendRedirect("/GuideList.do");
		}
		
		int no = Integer.parseInt(request.getParameter("pcode"));
		
		GuideDAO dao = new GuideDAO();
		Guide guide = dao.getGuide2(no);
		
		request.setAttribute("guide", guide);
		RequestDispatcher view = request.getRequestDispatcher("/tour/editGuide.jsp");
		view.forward(request, response);
	}

}