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
		System.out.println("현재 페이지 = reviewForm.do");
		String orderNum = req.getParameter("orderNum");
		req.setAttribute("orderNum", orderNum);
		String path = "review/addreviewForm.tiles";
		req.getRequestDispatcher(path).forward(req, resp);
		

	}


}
