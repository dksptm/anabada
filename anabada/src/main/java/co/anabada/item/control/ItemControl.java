package co.anabada.item.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;

public class ItemControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "item/item.tiles";
		// path = item.do 
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		//dispatch = item.do
		
		dispatch.forward(req, resp);
		// item.do로 페이지 이동

		
	}

}
