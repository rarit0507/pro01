package org.gongreung.ctrl.guide;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dto.Guide;
import org.gongreung.dao.GuideDAO;

@WebServlet("/GetGuide.do")
public class GetGuideCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetGuideCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		int pcode = Integer.parseInt(request.getParameter("pcode"));
		
		GuideDAO dao = new GuideDAO();
		Guide g = dao.getGuide(pcode);
		
		request.setAttribute("g", g);
		RequestDispatcher view = request.getRequestDispatcher("/guide/getGuide.jsp");
		view.forward(request, response);
		
	}

}