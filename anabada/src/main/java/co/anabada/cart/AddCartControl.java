package co.anabada.cart;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.cart.service.CartService;
import co.anabada.cart.service.CartServiceImpl;
import co.anabada.common.Control;

public class AddCartControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");

		int cartId = Integer.parseInt(req.getParameter("cartId"));
		int memberNum = Integer.parseInt(req.getParameter("memberNum"));
		int itemNum = Integer.parseInt(req.getParameter("itemNum"));
		String cartStatus =req.getParameter("cartStatus");
		
		Cart cart = new Cart();
		
		CartService svc = new CartServiceImpl();
		
		if(svc.addCart(cart)) {
			resp.sendRedirect("cartList.do");
		} else {
			req.setAttribute("message", "카트추가 에러 발생");
			
			req.getRequestDispatcher(cartStatus).forward(req, resp);
		}
	}
}
