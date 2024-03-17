package co.anabada.order.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;

public class OrderForm implements Control {

	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "order/orderForm.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}

}
