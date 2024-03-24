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
		resp.setContentType("application/json; charset=UTF-8");
		String iname = req.getParameter("iname");
		System.out.println("inameListControl(iname)= "+iname);
	
		
		ItemService svc = new ItemServiceImpl();
		List<Item> ilist = svc.InameList(iname);
		
		/* req.setAttribute("key", key); */
		req.setAttribute("ilist", ilist);
		
		Gson gson = new Gson();
		
		String jsonText = gson.toJson(ilist);
		
		System.out.println(jsonText);
		
		PrintWriter writer = resp.getWriter();
		
		writer.write(jsonText);
		
		writer.flush();

	}

}
