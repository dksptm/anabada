package co.anabada.item.service;


import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.item.mapper.ItemMapper;

public class ItemServiceImpl implements ItemService{
	
	SqlSession session = DataSource.getInstance().openSession(true);
	ItemMapper mapper = session.getMapper(ItemMapper.class);
	
	
}
