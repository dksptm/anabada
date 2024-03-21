package co.anabada.order.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.order.Order;
import co.anabada.order.serivce.OrderService;
import co.anabada.order.serivce.OrderServiceImpl;

public class AddOrderControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		String ino = req.getParameter("ino");
		String mno = req.getParameter("mno");
		String oty = req.getParameter("oty");
		String dhow = req.getParameter("dhow");
		String dfee = req.getParameter("dfee");
		String daddr = req.getParameter("daddr");
		String pty = req.getParameter("pty");
		
		Order odr = new Order();
		odr.setItemNum(Integer.parseInt(ino));
		odr.setMemberNum(Integer.parseInt(mno));
		odr.setOrderType(oty);
		odr.setDeliveryHow(dhow);
		odr.setDeliveryFee(Integer.parseInt(dfee));
		odr.setDeliveryAddress(daddr);
		odr.setPaymentType(pty);
		
		OrderService ovc = new OrderServiceImpl();
		
		Map<String, Object> map = new HashMap<>();
		
		try {
			if (ovc.addOrder(odr)) {
				map.put("retCode", "OK");
				map.put("retVal", "확인");
			} else {
				map.put("retCode", "NG");
			}			
		} catch(Exception e) {
			e.printStackTrace();
			map.put("retCode", "ERROR");
		}
		
		Gson gson = new GsonBuilder().create();
		resp.getWriter().print(gson.toJson(map));

	}

}
