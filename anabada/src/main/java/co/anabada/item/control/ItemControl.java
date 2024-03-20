package co.anabada.item.control;

import java.io.IOException;
import java.util.List;

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
		String path = "item/itemTest.tiles";
		
		// path = item.do 
		ItemService svc = new ItemServiceImpl();
		Item item = new Item();
		item = svc.Item();
		
		req.setAttribute("item", item);
		System.out.println(item);
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		//dispatch = item.do
		
		dispatch.forward(req, resp);
		// item.do로 페이지 이동

		
	}

}
