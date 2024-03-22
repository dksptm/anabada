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
		req.setCharacterEncoding("UTF-8");
		String memberNum = req.getParameter("memberNum");
		
		CartService svc = new CartServiceImpl();
		List<Cart> cartList = svc.cartList(Integer.parseInt(memberNum));
		
		req.setAttribute("list", cartList);
		
		//JSP
		String path = "cart/cartList.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);
	}

}
