package co.anabada.cart.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.cart.Cart;
import co.anabada.cart.service.CartService;
import co.anabada.cart.service.CartServiceImpl;
import co.anabada.common.Control;

public class RemoveCartControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");

		String cno = req.getParameter("cno");
		String mno = req.getParameter("mno");

		Cart cart = new Cart();
		cart.setCartNum(Integer.parseInt(cno));
		cart.setMemberNum(Integer.parseInt(mno));

		CartService svc = new CartServiceImpl();

		Map<String, Object> map = new HashMap<>();

		if (svc.removeCart(cart)) {
			map.put("retCode", "OK");
			System.out.println("성공");
		} else {
			map.put("retCode", "NG");
			System.out.println("실패");
		}
		Gson gson = new GsonBuilder().create();
		resp.getWriter().print(gson.toJson(map));
	}
}
