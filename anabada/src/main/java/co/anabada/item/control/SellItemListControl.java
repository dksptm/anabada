package co.anabada.item.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class SellItemListControl implements Control {

	

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		String memberNum = req.getParameter("memberNum");
		
		System.out.println(memberNum);
		
		ItemService svc = new ItemServiceImpl();
        List<Item> sellItemList = svc.sellItemList(Integer.parseInt(memberNum));
        req.setAttribute("sellItemList", sellItemList);
        
        String path = "item/sellItemList.tiles";
        RequestDispatcher dispatch = req.getRequestDispatcher(path);
        dispatch.forward(req, resp);
	}
}

/*package co.anabada.item.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class SellItemListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		String memberNum = req.getParameter("memberNum");
		
		System.out.println(memberNum);
		
		if(memberNum != null) {
		ItemService svc = new ItemServiceImpl();
        List<Item> sellItemList = svc.sellItemList(Integer.parseInt(memberNum));
        req.setAttribute("sellItemList", sellItemList);
        
        String path = "item/sellItemList.tiles";
        RequestDispatcher dispatch = req.getRequestDispatcher(path);
        dispatch.forward(req, resp);
        } else {
        resp.sendRedirect(req.getContextPath() + "/loginForm.do");
        }
	}*/
//}
