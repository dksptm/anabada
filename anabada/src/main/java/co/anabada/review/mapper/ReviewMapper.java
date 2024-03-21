package co.anabada.review.mapper;

import java.util.List;

import co.anabada.item.Item;
import co.anabada.review.Review;

public interface ReviewMapper {
	
	// 목록
	List<Review> reviewList(int mno);
	Item  addreviewList();
	int insertreview(Review review);
	Item breview();
	
	// 삭제
	int deleteReview(String reviewNum);
}
