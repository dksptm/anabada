package co.anabada.cart.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.cart.service.CartService;
import co.anabada.cart.service.CartServiceImpl;
import co.anabada.common.Control;

public class RemoveCartForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String path = "cart/deleteForm.tiles";
		req.getRequestDispatcher(path).forward(req, resp);

	}

}
