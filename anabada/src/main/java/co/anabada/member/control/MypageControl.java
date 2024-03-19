package co.anabada.member.control;

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

public class MypageControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String path = "member/myPage.tiles";
		
		//resp.setContentType("text/json;charset=uft-8");
		
		MemberService svc = new MemberServiceImpl();
		List<Member> myList = svc.myList();
		System.out.println("111111");
		System.out.println(myList);
		req.setAttribute("myList", myList);
		
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);
		
	}

}