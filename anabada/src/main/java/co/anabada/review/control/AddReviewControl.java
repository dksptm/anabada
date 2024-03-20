package co.anabada.review.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.review.Review;
import co.anabada.review.service.ReviewService;
import co.anabada.review.service.ReviewServiceImpl;

public class AddReviewControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		String orderNum = req.getParameter("order_num");
		String reviewScore = req.getParameter("review_score");
		String reviewComment = req.getParameter("review_comment");
		
//		Review review = new Review(orderNum, reviewScore, reviewComment);
		Review review = new Review(Integer.parseInt(orderNum),Integer.parseInt(reviewScore),reviewComment);
		
		ReviewService svc = new ReviewServiceImpl();
		svc.addreview(review);
		
		String path = "review/reviewList.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		//dispatch = item.do
		
		dispatch.forward(req, resp);
		
		
		


	}


}
