package co.anabada.common;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.item.Category;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class MainControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ItemService ivc = new ItemServiceImpl();
		List<Item> recentList = ivc.recentItem();
		List<Item> likeList = ivc.likeItem();
		
		if(recentList.size() != 0 && likeList.size() != 0) {
			req.setAttribute("recentList", recentList);
			req.setAttribute("likeList", likeList);
			String path = "main/main.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		} else {
			req.setAttribute("message", "메인에러가 발생했습니다.");
			String path = "main/error.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		}
	}
}
