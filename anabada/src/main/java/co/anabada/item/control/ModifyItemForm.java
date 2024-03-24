package co.anabada.item.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class ModifyItemForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		String ino = req.getParameter("ino");
		String seller = req.getParameter("seller");
		
		ItemService ivc = new ItemServiceImpl();
		Item item = ivc.getItem(Integer.parseInt(ino));
		
		req.setAttribute("ino", ino);
		req.setAttribute("seller", seller);
		req.setAttribute("item", item);
		String path = "item/modifyItemForm.tiles";
		req.getRequestDispatcher(path).forward(req, resp);

	}

}
