package co.anabada.item.control;

import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
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
		/*
		 * String page = req.getParameter("page"); page = page == null ? "1" : page;
		 * 
		 * String searchCond = req.getParameter("searchCondition"); String keyword =
		 * req.getParameter("keyword");
		 * 
		 * // 검색조건. SearchVO search = new SearchVO();
		 * search.setPage(Integer.parseInt(page));
		 * search.setSearchCondition(searchCond); search.setKeyword(keyword);
		 * 
		 * ItemService svc = new ItemServiceImpl(); List<Item> list =
		 * svc.ItemList(search);
		 * 
		 * pageDTO pageDTO = new pageDTO(Integer.parseInt(page),
		 * svc.itemTotalCnt(search));
		 * 
		 * // boardList.do 페이지에서 boardList.jsp 로 데이터 전달. req.setAttribute("list", list);
		 * req.setAttribute("page", pageDTO); req.setAttribute("searchCondition",
		 * searchCond); req.setAttribute("keyword", keyword);
		 */
		ItemService svc = new ItemServiceImpl();
		List<Item> itemList = svc.ItemList();
		req.setAttribute("itemList", itemList);
		
		String path = "item/itemList.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);
		
	}

}
