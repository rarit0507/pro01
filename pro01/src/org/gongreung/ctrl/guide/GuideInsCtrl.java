package org.gongreung.ctrl.guide;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dto.Guide;
import org.gongreung.dao.GuideDAO;

@WebServlet("/GuideIns.do")
public class GuideInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GuideInsCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Guide g = new Guide();
		
		//String title = request.getParameter("title");
		//String content = request.getParameter("content");
		
		g.setPname(request.getParameter("pname"));
		g.setPtype(request.getParameter("ptype"));
		g.setPaddr(request.getParameter("paddr"));
		g.setPtel(request.getParameter("ptel"));
		g.setPcoment(request.getParameter("pcoment"));
		
		GuideDAO dao = new GuideDAO();
		int cnt = dao.insGuide(g);
		
		if(cnt>0) {
			System.out.println("���� �߰� ����");
		} else {
			System.out.println("���� �߰� ����");
		}
		/*
		List<Notice> notiList = new ArrayList<>();
		notiList = dao.getNoticeList();
		request.setAttribute("notiList", notiList);		
		RequestDispatcher view = request.getRequestDispatcher("/notice/noticeList.jsp");
		view.forward(request, response);
		*/
		
		System.out.println("=============Ȯ��1========================");
		System.out.println(g);
		System.out.println("========================================");
		
		ServletContext application = request.getServletContext();
		String home = application.getContextPath();
		if(cnt>0) {
			response.sendRedirect(home+"/GuideList.do");
		} else {
			response.sendRedirect(home+"/guide/guide_ins.jsp");
		}
	}

}