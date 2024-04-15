package org.gongreung.ctrl.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.gongreung.ctrl.dao.MemberDAO;
import org.gongreung.ctrl.dto.Member;

@WebServlet("/LogInPro.do")
public class LogInProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogInProCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		Member mem = dao.getMember(id);
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		RequestDispatcher view;
		
		if(id.equals(mem.getId()) && pw.equals(mem.getPw())) { //�α��� ó�� ���
			session.setAttribute("sid", mem.getId());
			session.setAttribute("sname", mem.getName());
			response.sendRedirect("/pro01");
		} else if(id.equals(mem.getId())) { //��й�ȣ Ʋ��
			//response.sendRedirect("/member/login.jsp?msg=�ش� ȸ���� ��й�ȣ�� ��ġ���� �ʽ��ϴ�");
			//out.println("<script>history.go(-1);</script>");
			request.setAttribute("msg", "�ش� ȸ���� ��й�ȣ�� ��ġ���� �ʽ��ϴ�");
			view = request.getRequestDispatcher("/member/login.jsp");
			view.forward(request, response);
		} else {
			//response.sendRedirect("/member/login.jsp?msg=�ش� ȸ���� �������� �ʽ��ϴ�");
			//out.println("<script>history.go(-1);</script>");
			request.setAttribute("msg", "�ش� ȸ���� �������� �ʽ��ϴ�");
			view = request.getRequestDispatcher("/member/login.jsp");
			view.forward(request, response);
		}
		
	}

}