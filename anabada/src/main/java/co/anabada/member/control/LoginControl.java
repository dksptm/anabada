package co.anabada.member.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.anabada.common.Control;
import co.anabada.member.Member;
import co.anabada.member.service.MemberService;
import co.anabada.member.service.MemberServiceImpl;

public class LoginControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String login = req.getParameter("login");
		String id = req.getParameter("member_id");
		String pw = req.getParameter("member_pw");
		
		if(!login.equals("logout")) {
			Member member = new Member();
			member.setMemberId(id);
			member.setMemberPassword(pw);
			
			MemberService mvc = new MemberServiceImpl();
			member = mvc.loginMember(member);
			
			if(member != null) {
				HttpSession session = req.getSession();
				session.setAttribute("memberName", member.getMemberName());
				session.setAttribute("member", member);
				resp.sendRedirect("main.do");
			} else {
				req.setAttribute("message", "로그인 실패.");
				String path = "main/error.tiles";
				req.getRequestDispatcher(path).forward(req, resp);
			}
		}
		else {
			HttpSession session = req.getSession();
			session.invalidate();
			resp.sendRedirect("main.do");
		}
		
	}

}