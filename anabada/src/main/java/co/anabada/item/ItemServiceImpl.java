package co.anabada.item;


import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;

public class ItemServiceImpl implements ItemService{
	
	SqlSession session = DataSource.getInstance().openSession(true);
	ItemMapper mapper = session.getMapper(ItemMapper.class);
	
	
}
