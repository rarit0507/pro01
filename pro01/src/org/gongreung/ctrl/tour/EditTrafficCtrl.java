package org.gongreung.ctrl.tour;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.gongreung.ctrl.dao.TrafficDAO;
import org.gongreung.ctrl.dto.Traffic;

@WebServlet("/EditTraffic.do")
public class EditTrafficCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditTrafficCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("sid");
		
		if(!loginId.equals("admin")) {
			response.sendRedirect("/GetTrafficList.do");
		}
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		TrafficDAO dao = new TrafficDAO();
		Traffic traffic = dao.getTraffic2(no);
		
		request.setAttribute("traffic", traffic);
		RequestDispatcher view = request.getRequestDispatcher("/tour/editTraffic.jsp");
		view.forward(request, response);
	}

}