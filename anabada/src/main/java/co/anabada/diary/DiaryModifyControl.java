package co.anabada.diary;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;

public class DiaryModifyControl implements Control { //일정수정

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/json;charset=utf-8");
		String diary_id = req.getParameter("diary_id");
		String diary_name = req.getParameter("diary_name");
		String diary_content = req.getParameter("diary_content");
		String diary_type = req.getParameter("diary_type");
		String diary_mondify = req.getParameter("diary_modify");
		
		/*		  ---------------------------	     */
		Diary diary = new Diary();
		diary.setDiary_id(Integer.parseInt(diary_id));
		diary.setDiary_name(diary_name);
		diary.setDiary_content(diary_content);
		diary.setDiary_type(diary_type);
		diary.setDiary_modify(diary_mondify);
		
		/*		  ---------------------------	     */
		DiaryService dvc = new DiaryServicelmpl();
		Map<String, Object> map = new HashMap<>();
		
		/*		  ---------------------------	     */
		if (dvc.modifyDiary(diary)) {
			map.put("retCode", "OK");
			map.put("retVal", diary);
		} else {
			map.put("retCode", "NG");
		}
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(map);
		resp.getWriter().print(json);
	}
}
