package co.anabada.member.mapper;

import java.util.List;

import co.anabada.item.Item;
import co.anabada.member.Member;

// 멤버 매퍼 인터페이스.
public interface MemberMapper {
	List<Member> memberList();
	int insertMember(Member member);
	Member selectMember(Member member);
	Member selectMemByNum(int mno);
	int countMemberId(String id);
	
	// myPagy(효주)
	List<Item> perMemSellItems(int mno, int page);
	int countPerMemSellItems(int mno);
	
	// myPage
	List<Member> myList(int memberNum);
	List<Member> myInfoList(int memberNum);
	int updateAcc(Member member);
	int updatePw(Member member);
}
