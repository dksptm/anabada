package co.anabada.member.mapper;

import java.util.List;

import co.anabada.item.Item;
import co.anabada.member.Member;

// 멤버 매퍼 인터페이스.
public interface MemberMapper {
	List<Member> memberList();
	int insertMember(Member member);
	Member selectMember(Member member);
	int countMemberId(String id);
	// myPagy(효주)
	List<Item> perMemSellItems(int mno);
	
	// myPage
	List<Member> myList(int memberNum);
	List<Member> myInfoList();
}
