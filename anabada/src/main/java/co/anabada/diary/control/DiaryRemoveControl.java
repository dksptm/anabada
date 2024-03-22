package co.anabada.diary.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.diary.service.DiaryService;
import co.anabada.diary.service.DiaryServicelmpl;

public class DiaryRemoveControl implements Control{

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/json;charset=utf-8");
		String diaryNum = req.getParameter("diaryNum");
		
		/*		  ---------------------------	     */
		DiaryService dvc = new DiaryServicelmpl();
		Map<String, String> map = new HashMap<>();
		
		/*		  ---------------------------		 */
		if (dvc.removeDiary(Integer.parseInt(diaryNum))) {
			map.put("retCode", "OK");
			map.put("retMsg", "삭제되었습니다");
		} else {
			map.put("retCode", "NG");
			map.put("retMsg", "삭제할 일정이 없습니다");
		}
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(map);
		resp.getWriter().print(json);
	}
	
}
