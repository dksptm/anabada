package co.anabada.cart.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.cart.service.CartService;
import co.anabada.cart.service.CartServiceImpl;
import co.anabada.common.Control;

public class RemoveCartControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String cartNum = req.getParameter("cartNum");

		CartService svc = new CartServiceImpl();
		Map<String, Object> map = new HashMap<>(); 
		
		if(svc.removeCart(cartNum)) {
			map.put("retCode", "OK");
		 } else {
			 map.put("retCode","NG");
		 }
		Gson gson = new GsonBuilder().create();
		resp.getWriter().print(gson.toJson(map));
	}
}
