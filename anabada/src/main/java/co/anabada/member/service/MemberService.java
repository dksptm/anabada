package co.anabada.member.service;

import java.util.List;

import co.anabada.member.Member;

public interface MemberService {
	// 멤버 서비스 인터페이스.
	
	List<Member> memberList();
	boolean signUpMember(Member member);
	Member loginMember(Member member);
	boolean idCheck(String id);
	
	// myPage
	List<Member> myList();
	List<Member> myInfoList();
}
