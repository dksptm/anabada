package co.anabada.item.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.item.Category;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class CategoryListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 응답 인코딩.
		resp.setContentType("text/json;charset=utf-8");
		
		// 매퍼사용.
		ItemService ivc = new ItemServiceImpl();
		List<Category> list = ivc.cateList();
		
		// 자바객체 -> Gson객체.
		Gson gson = new GsonBuilder().create();
		// -> json문자열로.
		String json = gson.toJson(list);
		// json문자열로 응답(전달).
		resp.getWriter().print(json);
		
	}
}
