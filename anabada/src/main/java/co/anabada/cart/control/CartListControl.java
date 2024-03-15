package co.anabada.cart.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.cart.Cart;
import co.anabada.cart.service.CartService;
import co.anabada.cart.service.CartServiceImpl;
import co.anabada.common.Control;

public class CartListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/json;charset=utf-8");
		
		CartService svc = new CartServiceImpl();
		List<Cart> list = svc.cartList();
		
		req.setAttribute("list", list);
		
		//JSP
		String path = "cart/cartList.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);
	}

}
