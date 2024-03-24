package co.anabada.member.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.common.pageDTO;
import co.anabada.item.Item;
import co.anabada.member.service.MemberService;
import co.anabada.member.service.MemberServiceImpl;

public class MypageControl implements Control {
	// 효주수정start.
	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String mno = req.getParameter("mno");
		String page = req.getParameter("page");
		page = page == null ? "1" : page;
		System.out.println("실행?");

		MemberService mvc = new MemberServiceImpl();

		int total = mvc.countMySell(Integer.parseInt(mno));
		pageDTO pageDTO = new pageDTO(Integer.parseInt(page), total);

		List<Item> myList = mvc.mySellItems(Integer.parseInt(mno), Integer.parseInt(page));

		if (myList != null) {
			String path = "member/myPage.tiles";
			req.setAttribute("myList", myList);
			req.setAttribute("pageDTO", pageDTO);
			req.getRequestDispatcher(path).forward(req, resp);
		} else {
			String path = "member/myPage.tiles";
			req.setAttribute("myList", null);
			req.getRequestDispatcher(path).forward(req, resp);
		}

	}
	// 효주수정end.
}
