package co.anabada.review;

import java.sql.Date;

import lombok.Data;

@Data
public class Review {
	private int reviewNum;
	private int orderNum;//
	private String reviewScore;//
	private Date reviewDate;
	private String reviewComment;//
	private String memberName;
	public Review() {
		
	}
	public Review(int orderNum, String reviewScore, String reviewComment) {
		super();
		this.orderNum = orderNum;
		this.reviewScore = reviewScore;
		this.reviewComment = reviewComment;
	}
	public Review(int int1, int int2, String reviewComment2) {
	}
}
