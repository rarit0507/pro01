package org.gongreung.ctrl.tour;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dto.Traffic;
import org.gongreung.dao.TrafficDAO;

@WebServlet("/GetTraffic.do")
public class GetTrafficCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetTrafficCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String no = request.getParameter("no");
		
		TrafficDAO dao = new TrafficDAO();
		Traffic traffic = dao.getTraffic(no);
		
		request.setAttribute("traffic", traffic);
		RequestDispatcher view = request.getRequestDispatcher("/tour/getTraffic.jsp");
		view.forward(request, response);
		
	}

}