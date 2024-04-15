package org.gongreung.ctrl.tour;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dao.TrafficDAO;

@WebServlet("/DelTraffic.do")
public class DelTrafficCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelTrafficCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String no = request.getParameter("no");
		
		TrafficDAO dao = new TrafficDAO();
		int cnt = dao.delTraffic(no);
		
		if(cnt>0) {
			response.sendRedirect("/pro01/GetTrafficList.do");
		} else {
			response.sendRedirect("/pro01/GetTraffic2.do?no="+no);	//¿ø·¡ GetTraffic2.do¿´À½
		}
	}

}