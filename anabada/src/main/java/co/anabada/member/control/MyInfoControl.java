package co.anabada.member.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.anabada.common.Control;
import co.anabada.member.Member;
import co.anabada.member.service.MemberService;
import co.anabada.member.service.MemberServiceImpl;

public class MyInfoControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String memberNum = req.getParameter("memberNum");
		
		MemberService svc = new MemberServiceImpl();
		List<Member> myInfoList = svc.myInfoList(Integer.parseInt(memberNum));
		Member mem = svc.loginMemByNum(Integer.parseInt(memberNum));
		
		HttpSession session = req.getSession();
		session.setAttribute("memAcc", mem.getAccountNum());
		
		req.setAttribute("myInfoList", myInfoList);
		//System.out.println(memberNum);
		//System.out.println(myInfoList);
		
		 String path = "member/myInfo.tiles";
		 RequestDispatcher dispatch = req.getRequestDispatcher(path);
		 dispatch.forward(req, resp);
		
		 
	
	
		/*
		 * System.out.println(myInfoList); 
		 * req.setAttribute("myInfoList", myInfoList);
		 * 
		 * RequestDispatcher dispatch = req.getRequestDispatcher(path);
		 * dispatch.forward(req, resp);
		 */
	}

}
