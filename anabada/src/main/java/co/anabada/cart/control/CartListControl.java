package co.anabada.cart.control;

import java.io.IOException;
import java.util.List;

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
		
		//int cartId = Integer.parseInt(req.getParameter("cartId"));
		resp.setContentType("text/json;charset=utf-8");
		
		CartService svc = new CartServiceImpl();
		List<Cart> list = svc.cartList();
		String json ="["; 
		for (int i = 0; i < list.size(); i++) {
			   json += "{\"cartId\":\"" + list.get(i).getCartId()//
					   +"\",\"memberNum\":\"" + list.get(i).getMemberNum()//
					   +"\",\"itemNum\":\"" + list.get(i).getItemNum()//
					   +"\",\"cartStatus\":\"" + list.get(i).getCartStatus()//
					   +"\"}";
			   if (i != list.size() -1) {
				    json += ",";
			   }
		}
		json +="]";
		
		resp.getWriter().print(json);
	}

}
