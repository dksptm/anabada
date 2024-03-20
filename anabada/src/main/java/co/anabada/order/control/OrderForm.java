package co.anabada.order.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;

public class OrderForm implements Control {

	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String ino = req.getParameter("ino");
		String mno = req.getParameter("mno");
		String oty = req.getParameter("oty");
		System.out.println(ino + "-" + mno + "-" + oty);
		
		req.setAttribute("ino", ino);
		req.setAttribute("mno", mno);
		req.setAttribute("oty", oty);
		String path = "order/orderForm.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}

}
