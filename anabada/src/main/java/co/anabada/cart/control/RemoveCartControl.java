package co.anabada.cart.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.cart.service.CartService;
import co.anabada.cart.service.CartServiceImpl;
import co.anabada.common.Control;

public class RemoveCartControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 String cartNum = req.getParameter("cartNum");
		 
		 CartService svc = new CartServiceImpl();
		 
		 if(svc.removeCart(cartNum)) {
			 resp.sendRedirect("cartRemove.do");
		 } else {
			 req.setAttribute("message", "삭제 중 에러가 발생했습니다.");
			 String path = "anabada/errors.tiles";
			 req.getRequestDispatcher(path).forward(req, resp);
		 }
	}
}
