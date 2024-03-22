package co.anabada.order.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.order.Order;
import co.anabada.order.serivce.OrderService;
import co.anabada.order.serivce.OrderServiceImpl;

public class OrderComplete implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String odrNo = req.getParameter("odrNo");
		OrderService ovc = new OrderServiceImpl();
		Order order = ovc.odrComResult(Integer.parseInt(odrNo));
		
		if(order != null) {
			req.setAttribute("odrNo", odrNo);
			req.setAttribute("order", order);
			String path = "order/orderComplete.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		} else {
			req.setAttribute("message", "주문완료 데이터가져오는 오류");
			String path = "main/error.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		}
	}
}
