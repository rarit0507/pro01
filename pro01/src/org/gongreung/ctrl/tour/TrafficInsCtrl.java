package org.gongreung.ctrl.tour;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dao.TrafficDAO;
import org.gongreung.ctrl.dto.Traffic;

@WebServlet("/TrafficIns.do")
public class TrafficInsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TrafficInsCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Traffic t = new Traffic();
		
		t.setTtype(request.getParameter("ttype"));
		t.setNo(request.getParameter("no"));
		t.setRoute(request.getParameter("route"));
		t.setComent(request.getParameter("coment"));
		t.setUri(request.getParameter("uri"));
		
		TrafficDAO dao = new TrafficDAO();
		int cnt = dao.insTraffic(t);
		
		if(cnt>0) {
			System.out.println("������ �߰� ����");
		} else {
			System.out.println("������ �߰� ����");
		}
		
		System.out.println("�˻�11111111-------------------------------------");
		System.out.println(t);
		System.out.println("================================================-");
		
		
		ServletContext application = request.getServletContext();
		String home = application.getContextPath();
		if(cnt>0) {
			response.sendRedirect(home+"/GetTrafficList.do");
		} else {
			response.sendRedirect(home+"/tour/tIns.jsp");
		}
	}
}