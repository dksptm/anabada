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
		String oty = req.getParameter("oty");
		
		System.out.println(oty + "  " + ino);
		
		ItemService ivc = new ItemServiceImpl();
		Item item = ivc.getItem(Integer.parseInt(ino));
		
		if(oty.equals("baro")) {
			req.setAttribute("item", item);
			String path = "order/orderForm.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		} else if (oty.equals("nego")) {
			req.setAttribute("item", item);
			String path = "order/negoForm.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		} else {
			req.setAttribute("message", "주문연결 오류");
			String path = "main/error.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		}
	}

}
