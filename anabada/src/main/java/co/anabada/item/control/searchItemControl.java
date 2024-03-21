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

public class searchItemControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json; charset=UTF-8");
		
		String cname = req.getParameter("cname");
		ItemService svc = new ItemServiceImpl();
		List<Item> list = svc.ItemList(cname);
		
		req.setAttribute("list", list);
		
		Gson gson = new Gson();
		String jsonText = gson.toJson(list);
		System.out.println(jsonText);
		
		PrintWriter writer = resp.getWriter();
		
		writer.write(jsonText);
		writer.flush();
		
		

	}

}
