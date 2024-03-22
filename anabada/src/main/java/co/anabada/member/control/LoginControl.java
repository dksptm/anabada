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
		resp.setContentType("text/json;charset=utf-8");
		
		String mno = req.getParameter("mno");
		String login = req.getParameter("login");
		String id = req.getParameter("member_id");
		String pw = req.getParameter("member_pw");
		
		MemberService mvc = new MemberServiceImpl();
		
		if(!login.equals("logout")) { // 로그아웃 값이 들어온것 아니면(로그인이면)
			Member member = new Member();
			member.setMemberId(id);
			member.setMemberPassword(pw);
			member = mvc.loginMember(member);
			if(member != null) {
				HttpSession session = req.getSession();
				session.setAttribute("memberName", member.getMemberName());
				session.setAttribute("memAcc", member.getAccountNum());
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