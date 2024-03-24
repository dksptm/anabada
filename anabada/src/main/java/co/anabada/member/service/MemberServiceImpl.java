package co.anabada.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.item.Item;
import co.anabada.member.Member;
import co.anabada.member.mapper.MemberMapper;

public class MemberServiceImpl implements MemberService {
	
	// mapper 만들기.
	SqlSession session = DataSource.getInstance().openSession(true); //자동커밋.
	MemberMapper mapper = session.getMapper(MemberMapper.class);

	// 효주.
	@Override
	public List<Member> memberList() {
		return mapper.memberList();
	}

	@Override
	public boolean signUpMember(Member member) {
		return mapper.insertMember(member) == 1;
	}

	@Override
	public Member loginMember(Member member) {
		return mapper.selectMember(member);
	}

	@Override
	public boolean idCheck(String id) {
		return mapper.countMemberId(id) == 0;
	}

	@Override
	public List<Item> mySellItems(int mno, int page) {
		return mapper.perMemSellItems(mno, page);
	}
	@Override
	public int countMySell(int mno) {
		return mapper.countPerMemSellItems(mno);
	}
	
	// 진경.
	@Override
	public List<Member> myList(int memberNum) {
		return mapper.myList(memberNum);
	}

	@Override
	public List<Member> myInfoList(int memberNum) {
		return mapper.myInfoList(memberNum);
	}

	@Override
	public boolean modifyAcc(Member member) {
		return mapper.updateAcc(member) == 1;
	}

	@Override
	public Member loginMemByNum(int mno) {
		return mapper.selectMemByNum(mno);
	}

	@Override
	public boolean modifyPw(Member member) {
		 return mapper.updatePw(member) == 1;
	}

}
