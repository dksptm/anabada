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
	public List<Review> reviewList() {
		return mapper.reviewList();
	}
	@Override
	public Item addreviewList() {
		return mapper.addreviewList();
	}
	@Override
	public Review insertreview(Review review) {
		return mapper.insertreview(review);
	}

}
