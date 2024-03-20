package co.anabada.review.service;

import java.util.List;

import co.anabada.item.Item;
import co.anabada.review.Review;

public interface ReviewService {
	
	// 후기목록
	List<Review> reviewList();
	Item addreviewList();
	
	// 삭제
	boolean removeReview(String reviewNum);
	
}
