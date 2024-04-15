package org.gongreung.ctrl.guide;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dao.GuideDAO;
import org.gongreung.ctrl.dao.NoticeDAO;

@WebServlet("/DelGuide.do")
public class DelGuideCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelGuideCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int pcode = Integer.parseInt(request.getParameter("pcode"));
		
		GuideDAO dao = new GuideDAO();
		int cnt = dao.delGuide(pcode);
		
		if(cnt>0) {
			response.sendRedirect("/pro01/GuideList.do");
		} else {
			response.sendRedirect("/pro01/GetGuide2.do?pcode="+pcode);
		}
	}

}