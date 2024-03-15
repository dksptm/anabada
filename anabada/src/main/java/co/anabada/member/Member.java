package co.anabada.member;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Member {
	private int memberNum;
	private String memberId;
	private String memberPassword;
	private String memberName;
	private String memberPhone;
	private int memberScore;
	private String accountNum;
	
	// signUpControl에서 사용하기 위함.
	public Member(String memberId, String memberPassword, String memberName, String memberPhone) {
		super();
		this.memberId = memberId;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberPhone = memberPhone;
	}	
	
}

