package co.anabada.review.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.item.Item;
import co.anabada.review.Review;
import co.anabada.review.mapper.ReviewMapper;

public class ReviewServiceImpl implements ReviewService {
	SqlSession session = DataSource.getInstance().openSession(true);
	ReviewMapper mapper = session.getMapper(ReviewMapper.class);
	
	@Override
	public List<Review> reviewList(int mno) {
		return mapper.reviewList(mno);
	}
	@Override
	public Item addreviewList() {
		return mapper.addreviewList();
	}
	@Override
	public boolean addreview(Review review) {
		return mapper.insertreview(review) == 1;
	}
		
	public boolean removeReview(String reviewNum) {
		return mapper.deleteReview(reviewNum) == 1;
	}
	@Override
	public Item breview() {
		return mapper.breview();
	}

}
