package co.anabada.item.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class ChangeItem implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		String ino = req.getParameter("ino");
		String sts = req.getParameter("sts");
		
		if(sts.equals("hold")) {
			sts = "예약중";
		} else if(sts.equals("cancel")) {
			sts = "판매취소";
		} else if(sts.equals("complete")) {
			sts = "판매완료";
		} else if(sts.equals("ing")) {
			sts = "판매중";
		} else {
			sts = "오류";
		}
		
		ItemService ivc = new ItemServiceImpl();
		if (ivc.changeItem(sts, Integer.parseInt(ino))) {
			Item item = ivc.getItem(Integer.parseInt(ino));
			req.setAttribute("item", item);
			String path = "item/item.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		} else {
			req.setAttribute("message", "상품상태 변경 중 에러가 발생했습니다.");
			String path = "main/error.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		} 
		
	}

}
