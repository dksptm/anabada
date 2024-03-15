package co.anabada.item.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;

public class AddItemForm implements Control {

	// 상품등록 form 이동.
	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "item/addItemForm.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}

}
