package co.anabada.test;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.member.Member;
import co.anabada.member.service.MemberService;
import co.anabada.member.service.MemberServiceImpl;

public class TestAjaxControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		MemberService svc = new MemberServiceImpl();
		List<Member> list = svc.memberList();
		
		req.setAttribute("list", list);
		
		// 아작스.
		Gson gson = new GsonBuilder().create(); // Gson객체 생성.
		String json = gson.toJson(list); // Gson객체의 toJson()메소드가 자바객체를 json문자열로 변환.
		resp.getWriter().print(json);
	}

}
