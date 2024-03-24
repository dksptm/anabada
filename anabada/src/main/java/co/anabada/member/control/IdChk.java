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
import co.anabada.member.service.MemberService;
import co.anabada.member.service.MemberServiceImpl;

public class IdChk implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String id = req.getParameter("id");
		MemberService mvc = new MemberServiceImpl();
		Map<String, Object> map = new HashMap<>();

		if (mvc.idCheck(id)) {
			map.put("retCode", "OK");
		} else {
			map.put("retCode", "NG");
		}

		Gson gson = new GsonBuilder().create();
		resp.getWriter().print(gson.toJson(map));

		System.out.println(map);
	}

}
