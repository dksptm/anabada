package co.anabada.review.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.review.service.ReviewService;
import co.anabada.review.service.ReviewServiceImpl;

public class RemoveReviewControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String reviewNum = req.getParameter("reviewNum");
		ReviewService svc = new ReviewServiceImpl();
		Map<String, Object> map = new HashMap<>();
		
		if(svc.removeReview(reviewNum)) {
			map.put("retCode", "OK");
		} else {
			map.put("retCode","NG");
		 }
		
		Gson gson = new GsonBuilder().create();
		resp.getWriter().print(gson.toJson(map));
		
	}

}
