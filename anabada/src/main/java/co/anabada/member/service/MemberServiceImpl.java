package co.anabada.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.member.Member;
import co.anabada.member.mapper.MemberMapper;

public class MemberServiceImpl implements MemberService {
	
	SqlSession session = DataSource.getInstance().openSession(true); //자동커밋.
	MemberMapper mapper = session.getMapper(MemberMapper.class);

	@Override
	public List<Member> memberList() {
		return mapper.memberList();
	}

}