package co.anabada.item.service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.item.Item;
import co.anabada.item.mapper.ItemMapper;

public class ItemServiceImpl implements ItemService{
	
	SqlSession session = DataSource.getInstance().openSession(true);
	ItemMapper mapper = session.getMapper(ItemMapper.class);
	@Override
	public List<Item> ItemList() {
		return mapper.ItemList();
	}
	
	
}
