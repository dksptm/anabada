package co.anabada.item.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class SeachControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
resp.setContentType("text/json; charset=UTF-8");
		
		String cid = req.getParameter("cid");
		
		ItemService svc = new ItemServiceImpl();
		int total = svc.getCateCnt2(cid);
		
		
		Gson gson = new GsonBuilder().create();
		String jsonText = gson.toJson(total);
		resp.getWriter().print(jsonText);

	}

}
