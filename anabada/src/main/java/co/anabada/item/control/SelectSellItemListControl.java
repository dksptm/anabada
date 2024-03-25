package co.anabada.item.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class SelectSellItemListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		String itemNum = req.getParameter("itemNum");
		System.out.println("itemNum " + itemNum);

		ItemService svc = new ItemServiceImpl();
		Item selectSellItemList = svc.selectSellItemList(Integer.parseInt(itemNum));
		req.setAttribute("selectSellItemList", selectSellItemList);
		System.out.println("selectSellItemList " + selectSellItemList);

		String path = "WEB-INF/view/item/jsp/selectSellItemList.jsp";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);

	}

}
