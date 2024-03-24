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

public class DiaryAddControl implements Control { // 일정등록
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("application/json;charset=utf-8"); // json 글형식으로 저장
		String memberNum = req.getParameter("memberNum"); // 나중에 로그인멤버의 num을 받아오도록 처리예정.
		String diaryName = req.getParameter("diaryName");
		String diaryContent = req.getParameter("diaryContent");
		String diaryType = req.getParameter("diaryType");

		/* --------------------------- */
		Diary diary = new Diary();
		diary.setMemberNum(Integer.parseInt(memberNum));
		diary.setDiaryName(diaryName);
		diary.setDiaryContent(diaryContent);
		diary.setDiaryType(diaryType);

		/* --------------------------- */
		DiaryService dvc = new DiaryServicelmpl();
		Map<String, Object> map = new HashMap<>();

		/* --------------------------- */
		if (dvc.addDiary(diary)) {
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
