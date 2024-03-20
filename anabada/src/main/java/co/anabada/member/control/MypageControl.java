package co.anabada.member.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.member.service.MemberService;
import co.anabada.member.service.MemberServiceImpl;

public class MypageControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String mno = req.getParameter("mno");
		
		MemberService mvc = new MemberServiceImpl();
		List<Item> myList = mvc.mySellItems(Integer.parseInt(mno));
		
		if(myList != null) {
			String path = "member/myPage.tiles";
			req.setAttribute("myList", myList);
			req.getRequestDispatcher(path).forward(req, resp);
		} else {
			String path = "member/myPage.tiles";
			req.setAttribute("myList", null);
			req.getRequestDispatcher(path).forward(req, resp);
		}
		
	}

}
