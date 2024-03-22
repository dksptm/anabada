package co.anabada.diary.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import co.anabada.common.Control;
import co.anabada.diary.Diary;
import co.anabada.diary.service.DiaryService;
import co.anabada.diary.service.DiaryServicelmpl;

public class DiaryListControl implements Control {
    @Override
    public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=utf-8");
        
        DiaryService dvc = new DiaryServicelmpl();
        List<Diary> list = dvc.diaryList(new Diary()); 

        Gson gson = new GsonBuilder().create();
//        String json = gson.toJson(list.stream().map(diary -> {
//            var event = new java.util.HashMap<String, Object>();
//            event.put("name", diary.getDiaryName());
//            event.put("start", diary.getDiaryStartDate());
//            event.put("end", diary.getDiaryEndDate());
//            return event;
//        }).toList());
//        resp.getWriter().print(json);
    }
}

//		resp.setContentType("application/json;charset=utf-8");
//		String diaryId = req.getParameter("diaryId");
//		/*		  ---------------------------	     */
//		Diary diaryList = new Diary();
////		diaryList.setDiaryId(Integer.parseInt(diaryId));
//		/*		  ---------------------------	     */
//		DiaryService dvc = new DiaryServicelmpl();
//		List<Diary> list = dvc.diaryList(diaryList);
//		/*		  ---------------------------	     */
//		Gson gson = new GsonBuilder().create();
//		String json = gson.toJson(list);
//		resp.getWriter().print(json);