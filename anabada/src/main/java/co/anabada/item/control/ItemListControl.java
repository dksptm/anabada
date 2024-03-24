package co.anabada.item.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.common.SearchVO;
import co.anabada.common.pageDTO;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class ItemListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("application/json; charset=UTF-8");
		System.out.println("여기는 itemListControlo.java");
		String page = req.getParameter("page");
		System.out.println(page);
		String radio = req.getParameter("radio");
		System.out.println(radio);
		String keyword = req.getParameter("keyword");
		System.out.println(keyword);
		
		keyword = keyword == null ? "" : keyword;
		page = page == null ? "1" : page;
		
		SearchVO search = new SearchVO();
		
		search.setPage(Integer.parseInt(page));
		search.setRadio(radio);
		search.setKeyword(keyword);
		
		ItemService svc = new ItemServiceImpl();
		
		pageDTO pageDTO = new pageDTO(Integer.parseInt(page), svc.itemTotalCnt(search));
		
	    List<Item> itemList = svc.ItemList1(search);
		
		req.setAttribute("itemList", itemList);

		req.setAttribute("page", pageDTO);
		req.setAttribute("radio", radio);
		req.setAttribute("keyword", keyword);
		
		String path = "item/itemList.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);
		
	}

}
