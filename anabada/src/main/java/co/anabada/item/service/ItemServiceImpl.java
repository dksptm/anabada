package co.anabada.item.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.item.Category;
import co.anabada.item.Item;
import co.anabada.item.mapper.ItemMapper;

public class ItemServiceImpl implements ItemService {

	// mapper 만들기.
	SqlSession session = DataSource.getInstance().openSession(true);
	ItemMapper mapper = session.getMapper(ItemMapper.class);

	// 영재.
	@Override
	public List<Item> ItemList() {
		return mapper.ItemList();
	}

	// 효주
	@Override
	public boolean addItem(Item item) {
		return mapper.insertItem(item) == 1;
	}

	@Override
	public List<Item> recentItem() {
		return mapper.recentItem();
	}

	@Override
	public List<Item> likeItem() {
		return mapper.likeItem();
	}

	@Override
	public List<Category> cateList() {
		return mapper.cateList();
	}

	
}
