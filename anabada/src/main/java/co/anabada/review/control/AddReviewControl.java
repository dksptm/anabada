package co.anabada.review.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.review.Review;
import co.anabada.review.service.ReviewService;
import co.anabada.review.service.ReviewServiceImpl;

public class AddReviewControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/json;charset=utf-8");
		
		int orderNum = Integer.parseInt(req.getParameter("orderNum"));
		System.out.println(orderNum);
		//
		String reviewScore = req.getParameter("review_score");
		System.out.println("review_score= "+reviewScore);
		String reviewComment = req.getParameter("review_comment");
		System.out.println("review_comment= "+reviewComment);
		
//		Review review = new Review(Integer.parseInt(reviewScore),reviewComment);
		//Review review = new Review(Integer.parseInt(ono),Integer.parseInt(reviewScore),reviewComment);
		Review review = new Review(orderNum,reviewScore,reviewComment);
		
		ReviewService svc = new ReviewServiceImpl();
		//svc.addreview(review);
	    
		req.setAttribute("orderNum", orderNum);
		//req.setAttribute("review", review);
		//System.out.println(review);
		
//		String path = "review/reviewList.tiles";
		String path = "review/addreviewForm.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		//dispatch = item.do
		
		dispatch.forward(req, resp);
		
		
		


	}


}
