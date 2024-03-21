package co.anabada.item.service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.common.SearchVO;
import co.anabada.item.Category;
import co.anabada.item.Item;
import co.anabada.item.mapper.ItemMapper;

public class ItemServiceImpl implements ItemService{
	
	SqlSession session = DataSource.getInstance().openSession(true);
	ItemMapper mapper = session.getMapper(ItemMapper.class);
	
	// 영재
	@Override
	public List<Item> ItemList(String cname) {
		return mapper.ItemList(cname);
	}
	@Override
	public int itemTotalCnt(SearchVO search) {
		return mapper.getTotalCnt(search);
	}
	@Override
	public Item getItem(int in){
		return mapper.selectItem(in);
	}
	
	// 효주.
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
	
	// 진경
	@Override
	public List<Item> shopList() {
		return mapper.shopList();
	}

	
	@Override
	public List<Item> sellItemList(int memberNum) {
		return mapper.sellItemList(memberNum);
	}
	@Override
	public boolean removeSellItemList(int itemNum) {
		return mapper.deleteSellItemList(itemNum) == 1;
	}
	@Override
	public List<Item> ItemList() {
		return mapper.ItemList1();
	}

	
}
