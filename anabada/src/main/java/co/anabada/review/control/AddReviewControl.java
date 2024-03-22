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
		String orderNum = req.getParameter("orderNum");
		System.out.println(orderNum);
		
		String memberNum = req.getParameter("memberNum");
		System.out.println(memberNum);
		
		//
		String reviewScore = req.getParameter("review_score");
		System.out.println("review_score= "+reviewScore);
		String reviewComment = req.getParameter("review_comment");
		System.out.println("review_comment= "+reviewComment);
		
//		Review review = new Review(Integer.parseInt(reviewScore),reviewComment);
		//Review review = new Review(Integer.parseInt(ono),Integer.parseInt(reviewScore),reviewComment);
		Review review = new Review(Integer.parseInt(orderNum),Integer.parseInt(reviewScore),reviewComment);
		
		ReviewService svc = new ReviewServiceImpl();
		if(svc.addreview(review)) {
			resp.sendRedirect("reviewList.do?mno=" + memberNum);
		} else {
			req.setAttribute("message", "리뷰등록 실패.");
			String path = "main/error.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		}


	}


}
