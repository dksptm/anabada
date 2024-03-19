package co.anabada.review.mapper;

import java.util.List;

import co.anabada.item.Item;
import co.anabada.review.Review;

public interface ReviewMapper {
	
	// 목록
	List<Review> reviewList();
	Item  addreviewList();
	Review insertreview(Review review);
}
