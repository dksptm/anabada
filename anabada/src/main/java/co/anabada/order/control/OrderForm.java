package co.anabada.order.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class OrderForm implements Control {

	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String ino = req.getParameter("ino");
		
		ItemService ivc = new ItemServiceImpl();
		Item item = ivc.getItem(Integer.parseInt(ino));
		
		req.setAttribute("item", item);
		String path = "order/orderForm.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}

}
