package co.anabada.nego.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.nego.Nego;
import co.anabada.nego.mapper.NegoMapper;

public class NegoServiceImpl implements NegoService {
	SqlSession session = DataSource.getInstance().openSession(true); // 자동커밋.
	NegoMapper mapper = session.getMapper(NegoMapper.class);

	@Override
	public List<Nego> negoForm(int itemNum) {
		return mapper.negoForm(itemNum);
	}

	@Override
	public boolean AddnegoChat(Nego nego) {
		return mapper.AddnegoChat(nego) == 1;

	}

}
