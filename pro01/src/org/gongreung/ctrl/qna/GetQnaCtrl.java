package org.gongreung.ctrl.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gongreung.ctrl.dao.QnaDAO;
import org.gongreung.ctrl.dto.Qna;

@WebServlet("/GetQna.do")
public class GetQnaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetQnaCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		QnaDAO dao1 = new QnaDAO();
		Qna qnaq = dao1.getQnaq(no);
		request.setAttribute("qnaq", qnaq);
		
		QnaDAO dao2 = new QnaDAO();
		Qna qnaa = dao2.getQnaa(no);
		request.setAttribute("qnaa", qnaa);
		
		RequestDispatcher view = request.getRequestDispatcher("/qna/getQna.jsp");
		view.forward(request, response);
	}

}