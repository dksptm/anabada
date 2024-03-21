package co.anabada.order.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.order.Order;
import co.anabada.order.serivce.OrderService;
import co.anabada.order.serivce.OrderServiceImpl;

public class selectPurchaseOrderForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/json;charset=utf-8");
		String orderNum = req.getParameter("orderNum");
		System.out.println("orderNum " + orderNum);
		
		OrderService svc = new OrderServiceImpl();
        Order selectPurchaseOrder = svc.selectPurchaseOrder(Integer.parseInt(orderNum));
        req.setAttribute("selectPurchaseOrder", selectPurchaseOrder);
        System.out.println("selectPurchaseOrder " + selectPurchaseOrder);
        System.out.println("실행?");
        
		String path = "WEB-INF/view/order/jsp/selectPurchaseList.jsp";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);
	}

}
