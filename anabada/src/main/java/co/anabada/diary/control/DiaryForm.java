package co.anabada.diary.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;

public class DiaryForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "diary/diaryForm.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
	}

}
