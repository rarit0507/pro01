package org.gongreung.ctrl;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dto.Guide;
import org.gongreung.ctrl.dto.Notice;
import org.gongreung.ctrl.dto.Qna;
import org.gongreung.dao.GuideDAO;
import org.gongreung.dao.NoticeDAO;
import org.gongreung.dao.QnaDAO;

@WebServlet("/pro01")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Main() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String author = "이예린";
		
		ServletContext application = request.getServletContext();
		String realPath = request.getSession().getServletContext().getRealPath("/");
		application.setAttribute("realPath", realPath);
		application.setAttribute("title", "공릉동소개");
				
		NoticeDAO ndao = new NoticeDAO();
		List<Notice> latestNotiList = ndao.getLatestNoticeList();
		request.setAttribute("latestNotiList", latestNotiList);
		
		GuideDAO gdao = new GuideDAO();
		List<Guide> latestGuideList = gdao.getLatestGuideList();
		request.setAttribute("latestGuideList", latestGuideList);
		
		QnaDAO qdao = new QnaDAO();
		List<Qna> latestQnaList = qdao.getLatestQnaList();
		request.setAttribute("latestQnaList", latestQnaList);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");
		view.forward(request, response);
	}
	
	
	
}