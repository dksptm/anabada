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
	public List<Item> mySellItems(int mno) {
		return mapper.perMemSellItems(mno);
	}
	
	// 진경.
	@Override
	public List<Member> myList() {
		return mapper.myList();
	}

	@Override
	public List<Member> myInfoList() {
		return mapper.myInfoList();
	}


}
