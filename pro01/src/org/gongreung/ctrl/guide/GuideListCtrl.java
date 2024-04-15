package org.gongreung.ctrl.guide;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dao.GuideDAO;
import org.gongreung.ctrl.dto.Guide;

@WebServlet("/GuideList.do")
public class GuideListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GuideListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		GuideDAO dao = new GuideDAO();
		List<Guide> gList = new ArrayList<>();
		gList = dao.getGuideList();
		request.setAttribute("gList", gList);
		
		System.out.println("=============확인2========================");
		System.out.println(gList);
		System.out.println("=========================================");
		
		RequestDispatcher view = request.getRequestDispatcher("/guide/guideList.jsp");
		view.forward(request, response);
		
	}

}