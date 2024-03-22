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
import co.anabada.review.Review;
import co.anabada.review.service.ReviewService;
import co.anabada.review.service.ReviewServiceImpl;

public class RemoveReviewControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		String rno = req.getParameter("rno");
		String mno = req.getParameter("mno");
		System.out.println("rno: " + rno );
		
		Review review = new Review();
		review.setReviewNum(Integer.parseInt(rno));
		review.setMemberNum(Integer.parseInt(mno));
		
		ReviewService svc = new ReviewServiceImpl();
		
		Map<String, Object> map = new HashMap<>();
		
		if(svc.removeReview(review)) {
			map.put("retCode", "OK");
			System.out.println("성공");
		} else {
			map.put("retCode","NG");
			System.out.println("실패");
		 }
		
		Gson gson = new GsonBuilder().create();
		resp.getWriter().print(gson.toJson(map));
		
	}

}
