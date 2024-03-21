package co.anabada.review.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.review.Review;
import co.anabada.review.service.ReviewService;
import co.anabada.review.service.ReviewServiceImpl;

public class AddReviewForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		String orderNum = req.getParameter("orderNum");
//		System.out.println("orderNum ="+orderNum);
//		String reviewScore = req.getParameter("review_score");
//		String reviewComment = req.getParameter("review_comment");
//		
//		ReviewService svc = new ReviewServiceImpl();
//		System.out.println("review = " + review);
//		ReviewService svc = new ReviewServiceImpl();
//		svc.addreview(review);
//		req.setAttribute("ono", ono);
//		req.setAttribute("review", review);
		
		String path = "review/reviewList.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
		

	}


}
