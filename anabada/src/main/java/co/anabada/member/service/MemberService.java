package co.anabada.member.service;

import java.util.List;

import co.anabada.item.Item;
import co.anabada.member.Member;

public interface MemberService {
	// 멤버 서비스 인터페이스.

	List<Member> memberList();

	boolean signUpMember(Member member);

	Member loginMember(Member member);

	Member loginMemByNum(int mno);

	boolean idCheck(String id);

	// myPage(효주)
	List<Item> mySellItems(int mno, int page);

	int countMySell(int mno);

	// myPage
	List<Member> myList(int memberNum);

	List<Member> myInfoList(int memberNum);

	// 수정
	boolean modifyAcc(Member member);

	boolean modifyPw(Member member);
}
