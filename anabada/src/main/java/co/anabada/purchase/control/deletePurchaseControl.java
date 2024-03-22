package co.anabada.purchase.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.purchase.service.PurchaseService;
import co.anabada.purchase.service.PurchaseServiceImpl;

public class deletePurchaseControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String orderId = req.getParameter("orderId");
//
//		PurchaseService svc = new PurchaseServiceImpl();
//
//		if (svc.removePurchaseList(Integer.parseInt(orderId))) {
//			resp.sendRedirect("purchaseList.do");
//		} else {
//			req.setAttribute("message", "삭제 중 에러가 발생했습니다.");
//			String path = "WEB-INF/view/error.jsp";
//			req.getRequestDispatcher(path).forward(req, resp);
//		}
//	}

		resp.setContentType("text/json;charset=utf-8");
		String orderNum = req.getParameter("orderNum");
		System.out.println(orderNum);
		PurchaseService svc = new PurchaseServiceImpl();
		Map<String, String> map = new HashMap<>();

		if (svc.removePurchaseList(Integer.parseInt(orderNum))) {
			map.put("retCode", "OK");
			map.put("retMsg", "정상적으로 삭제되었습니다");
		} else {
			map.put("retCode", "NG");
			map.put("retMsg", "삭제할 글번호가 없습니다");
		}
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(map);

		resp.getWriter().print(json);
	}
}
