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

public class ModifyAccControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");

		String acc = req.getParameter("acc");
		String mno = req.getParameter("mno");

		Member member = new Member();
		member.setAccountNum(acc);
		member.setMemberNum(Integer.parseInt(mno));

		MemberService svc = new MemberServiceImpl();

		Map<String, Object> map = new HashMap<>();

		if (svc.modifyAcc(member)) {
			map.put("retCode", "OK");
			System.out.println("성공");
		} else {
			map.put("retCode", "NG");
			System.out.println("실패");
		}

		Gson gson = new GsonBuilder().create();
		resp.getWriter().print(gson.toJson(map));


	}
}
