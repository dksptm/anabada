package co.anabada;

import java.util.List;

import co.anabada.common.DataSource;
import co.anabada.member.Member;
import co.anabada.member.mapper.MemberMapper;

public class MapperTest {
	public static void main(String[] args) {
		// mapper 테스트.
		MemberMapper mapper = DataSource.getInstance().openSession(true).getMapper(MemberMapper.class);

		List<Member> list = mapper.memberList();
		for (Member m : list) {
			System.out.println(m.toString());
		}
	}
}
