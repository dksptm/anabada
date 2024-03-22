package co.anabada.item.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class InameListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String iname = req.getParameter("iname");
		String key = req.getParameter("keyword");
		ItemService svc = new ItemServiceImpl();
		List<Item> ilist = svc.InameList(iname);
		
		req.setAttribute("key", key);
		req.setAttribute("ilist", ilist);
		
		Gson gson = new Gson();
		
		String jsonText1 = gson.toJson(ilist);
		
		PrintWriter writer = resp.getWriter();
		writer.write(jsonText1);
		

	}

}
