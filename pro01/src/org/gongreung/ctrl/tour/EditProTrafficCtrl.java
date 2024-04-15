package org.gongreung.ctrl.tour;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dao.TrafficDAO;
import org.gongreung.ctrl.dto.Traffic;

@WebServlet("/EditProTraffic.do")
public class EditProTrafficCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProTrafficCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Traffic traffic = new Traffic();
		traffic.setTno(Integer.parseInt(request.getParameter("no")));
		traffic.setTtype(request.getParameter("ttype"));
		traffic.setNo(request.getParameter("no"));
		traffic.setRoute(request.getParameter("route"));
		traffic.setComent(request.getParameter("coment"));
		traffic.setUri(request.getParameter("uri"));
		
		TrafficDAO dao = new TrafficDAO();
		int cnt = dao.editProTraffic(traffic);
		
		if(cnt>0) {
			response.sendRedirect("/pro01/GetTrafficList.do");
		} else {
			response.sendRedirect("/pro01/EditTraffic.do?no="+traffic.getNo());
		}
	}
}