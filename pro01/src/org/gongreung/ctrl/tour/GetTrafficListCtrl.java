package org.gongreung.ctrl.tour;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dto.Traffic;
import org.gongreung.ctrl.dto.TrafficVO;
import org.gongreung.dao.TrafficDAO;

@WebServlet("/GetTrafficList.do")
public class GetTrafficListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetTrafficListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TrafficDAO dao = new TrafficDAO();
		List<Traffic> tList = dao.getTrafficList();
		List<TrafficVO> voList = dao.getTab();
		request.setAttribute("tList", tList);
		request.setAttribute("voList", voList);
		
		System.out.println("�˻�222222222222222-------------------------------------");
		System.out.println(tList);
		System.out.println(voList);
		System.out.println("================================================-");
		
		RequestDispatcher view = request.getRequestDispatcher("/tour/trafficList.jsp");
		view.forward(request, response);
	}
}