package co.anabada.item.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class ItemControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "item/item.tiles";
		
		String in = req.getParameter("itemNum");
		
		// path = item.do 
		ItemService svc = new ItemServiceImpl();// 서비스 
		Item item = new Item(); // 아이템 객채
		item = svc.getItem(Integer.parseInt(in));
		
		req.setAttribute("item", item);
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		//dispatch = item.do
		
		dispatch.forward(req, resp);
		// item.do로 페이지 이동

		
	}

}
