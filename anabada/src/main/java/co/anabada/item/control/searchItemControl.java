package co.anabada.item.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class searchItemControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json; charset=UTF-8");

		String cname = req.getParameter("cname");
		String page = req.getParameter("page");

		ItemService svc = new ItemServiceImpl();
		List<Item> list = svc.ItemList(cname, Integer.parseInt(page));
		// req.setAttribute("list", list);

		Gson gson = new GsonBuilder().create();
		String jsonText = gson.toJson(list);

		resp.getWriter().print(jsonText);

	}

}
