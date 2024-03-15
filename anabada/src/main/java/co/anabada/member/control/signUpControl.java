package co.anabada.member.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.member.Member;
import co.anabada.member.service.MemberService;
import co.anabada.member.service.MemberServiceImpl;

public class signUpControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		Member member = new Member(req.getParameter("member_id"), req.getParameter("member_pw"), req.getParameter("member_name"), req.getParameter("member_phone"));
		MemberService svc = new MemberServiceImpl();
		
		try {
			if (svc.signUpMember(member)) {
				req.setAttribute("member", member);
				String path = "main/main.tiles";
				req.getRequestDispatcher(path).forward(req, resp);
			} else {
				req.setAttribute("message", "등록 중 에러가 발생했습니다.");
				String path = "main/error.tiles";
				req.getRequestDispatcher(path).forward(req, resp);
			}
		} catch (Exception e){
			e.printStackTrace();
			req.setAttribute("message", "Exception e");
			String path = "main/error.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		}
	}
}