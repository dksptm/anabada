package co.anabada.diary.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.diary.Diary;
import co.anabada.diary.service.DiaryService;
import co.anabada.diary.service.DiaryServicelmpl;

public class DiaryListControl implements Control { //일정목록

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/json;charset=utf-8");
		String diaryId = req.getParameter("diaryId");
		System.out.println("list:1 " +diaryId);
		/*		  ---------------------------	     */
		Diary diaryList = new Diary();
		diaryList.setDiaryId(Integer.parseInt(diaryId));
		System.out.println("list:2 " +diaryId);
		/*		  ---------------------------	     */
		DiaryService dvc = new DiaryServicelmpl();
		List<Diary> list = dvc.diaryList(diaryList);
		System.out.println("list:3 " +diaryList);
		/*		  ---------------------------	     */
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(list);
		resp.getWriter().print(json);
		System.out.println("list:4 " +json);
	}

}
