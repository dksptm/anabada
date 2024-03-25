package co.anabada.test;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.member.Member;
import co.anabada.member.service.MemberService;
import co.anabada.member.service.MemberServiceImpl;

public class TestControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");

		MemberService svc = new MemberServiceImpl();
		List<Member> list = svc.memberList();

		req.setAttribute("list", list);

		// JSP.
		String path = "member/test.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);

		// => 줄여서 req.getRequestDispatcher(path).forward(req, resp);

	}

}
