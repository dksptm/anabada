package co.anabada.review;

import java.sql.Date;

import lombok.Data;
@Data
public class Review {
	private int reviewNum;
	private int orderId;
	private int reviewScore;
	private Date reviewDate;
	private String reviewComment;
	private String memberName;
}
