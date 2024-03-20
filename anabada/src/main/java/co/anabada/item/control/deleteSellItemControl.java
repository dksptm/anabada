package co.anabada.item.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class deleteSellItemControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		String itemNum = req.getParameter("itemNum");

		ItemService svc = new ItemServiceImpl();
		Map<String, String> map = new HashMap<>();

		if (svc.removeSellItemList(Integer.parseInt(itemNum))) {
			map.put("retCode", "OK");
			map.put("retMsg", "정상적으로 삭제되었습니다");
		} else {
			map.put("retCode", "NG");
			map.put("retMsg", "삭제할 글번호가 없습니다");
		}
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(map);

		resp.getWriter().print(json);
	}
}
/*
 * package co.anabada.item.control;
 * 
 * import java.io.IOException; import java.util.HashMap; import java.util.Map;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import com.google.gson.Gson; import com.google.gson.GsonBuilder;
 * 
 * import co.anabada.common.Control; import co.anabada.item.service.ItemService;
 * import co.anabada.item.service.ItemServiceImpl;
 * 
 * public class deleteSellItemControl implements Control {
 * 
 * @Override public void exec(HttpServletRequest req, HttpServletResponse resp)
 * throws ServletException, IOException {
 * resp.setContentType("text/json;charset=utf-8"); String itemNum =
 * req.getParameter("itemNum");
 * 
 * ItemService svc = new ItemServiceImpl(); Map<String, String> map = new
 * HashMap<>(); if (svc.removeSellItemList(Integer.parseInt(itemNum))) {
 * map.put("retCode", "OK"); map.put("retMsg", "정상적으로 삭제되었습니다"); } else {
 * map.put("retCode", "NG"); map.put("retMsg", "삭제할 글번호가 없습니다"); }
 * 
 * Gson gson = new GsonBuilder().create(); String json = gson.toJson(map);
 * 
 * resp.getWriter().print(json); } }
 */
