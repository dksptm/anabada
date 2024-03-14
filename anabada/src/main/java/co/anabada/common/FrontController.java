package co.anabada.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import co.anabada.item.ItemControl;


import co.anabada.cart.CartListControl;
import co.anabada.test.TestAjaxControl;
import co.anabada.test.TestControl;


public class FrontController extends HttpServlet {
	
	Map<String, Control> controls;
	
	public FrontController() {
		controls = new HashMap<>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 실행.");
		
		// 효주.
		controls.put("/main.do", new MainControl());
		controls.put("/test.do", new TestControl());
		
		// 영재.
		controls.put("/item.do", new ItemControl());


		// 진경.
		controls.put("/cartList.do", new CartListControl());
		controls.put("/testAjax.do", new TestAjaxControl());
		
		// 주완.

	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service 실행.");
		
		req.setCharacterEncoding("utf-8");
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String path = uri.substring(context.length());
		System.out.println("path: " + path);
		
		Control control = controls.get(path);
		control.exec(req, resp);
	}
	
	

}
