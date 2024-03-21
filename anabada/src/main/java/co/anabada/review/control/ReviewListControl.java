package co.anabada.review.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.review.Review;
import co.anabada.review.service.ReviewService;
import co.anabada.review.service.ReviewServiceImpl;

public class ReviewListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/json;charset=utf-8");
		String mno = req.getParameter("mno");
		
		ReviewService svc = new ReviewServiceImpl();
		List<Review> list = svc.reviewList(Integer.parseInt(mno));
		
		req.setAttribute("list", list);
		
		//JSP
		String path = "review/reviewList.tiles";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);
		
	}

}
