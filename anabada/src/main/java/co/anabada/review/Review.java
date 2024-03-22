package co.anabada.review;

import java.sql.Date;

import lombok.Data;

@Data
public class Review {
	private int reviewNum;
	private int orderNum;//
	private int reviewScore;//
	private Date reviewDate;
	private String reviewComment;//
	private String memberName;
	private int memberNum;
	

	public Review(int orderNum, int reviewScore, String reviewComment) {
		super();
		this.orderNum = orderNum;
		this.reviewScore = reviewScore;
		this.reviewComment = reviewComment;
	}


	public Review() {
		// TODO Auto-generated constructor stub
	}


	
}
