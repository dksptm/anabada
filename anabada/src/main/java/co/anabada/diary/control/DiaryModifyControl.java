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
import co.anabada.diary.Diary;
import co.anabada.diary.service.DiaryService;
import co.anabada.diary.service.DiaryServicelmpl;

public class DiaryModifyControl implements Control { //일정수정

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("application/json;charset=utf-8");
		String diaryNum = req.getParameter("diaryNum"); 
		String diaryName = req.getParameter("diaryName");
		String diaryContent = req.getParameter("diaryContent");
		String diaryType = req.getParameter("diaryType");
		String diaryModify = req.getParameter("diaryModify");
		
		/*		  ---------------------------	     */
		Diary diary = new Diary();
		diary.setDiaryNum(Integer.parseInt(diaryNum));
		diary.setDiaryName(diaryName);
		diary.setDiaryContent(diaryContent);
		diary.setDiaryType(diaryType);
		diary.setDiaryModify(diaryModify);
		
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
