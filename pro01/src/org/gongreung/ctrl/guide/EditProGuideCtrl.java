package org.gongreung.ctrl.guide;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dao.GuideDAO;
import org.gongreung.ctrl.dto.Guide;

@WebServlet("/EditProGuide.do")
public class EditProGuideCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProGuideCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Guide g = new Guide();
		g.setPcode(Integer.parseInt(request.getParameter("pcode")));
		g.setPname(request.getParameter("pname"));
		g.setPtype(request.getParameter("ptype"));
		g.setPaddr(request.getParameter("paddr"));
		g.setPtel(request.getParameter("ptel"));
		g.setPcoment(request.getParameter("coment"));
		
		GuideDAO dao = new GuideDAO();
		int cnt = dao.editProGuide(g);
		
		if(cnt>0) {
			response.sendRedirect("/pro01/GuideList.do");
		} else {
			response.sendRedirect("/pro01/EditGuide.do?pcode="+g.getPcode());
		}
	}
}