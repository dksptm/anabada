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

public class DiaryAddControl implements Control { //일정등록
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/json;charset=utf-8"); // json 글형식으로 저장
		String diary_id = req.getParameter("diary_id");
		String member_num = req.getParameter("member_num");
		String diary_name = req.getParameter("diary_name");
		String diary_content = req.getParameter("diary_content");
		String diary_type = req.getParameter("diary_type");
		
		/*		  ---------------------------	     */
		Diary diary = new Diary();
		diary.setDiary_id(Integer.parseInt(diary_id));
		diary.setMember_num(Integer.parseInt(member_num));
		diary.setDiary_name(diary_name);
		diary.setDiary_content(diary_content);
		diary.setDiary_type(diary_type);
		
		/*		  ---------------------------	     */
		DiaryService dvc = new DiaryServicelmpl();
		Map<String, Object> map = new HashMap<>();
		
		/*		  ---------------------------	     */
		if (dvc.addDairy(diary)) {
			map.put("retCode", "OK");
			map.put("retVal", diary);
		}else {
			map.put("retCode", "NG");
		}
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(map);
		resp.getWriter().print(json);
	}
}
