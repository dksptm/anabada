package co.anabada.item.service;

import java.util.List;

import co.anabada.common.SearchVO;
import co.anabada.item.Category;
import co.anabada.item.Item;

public interface ItemService {
	
	// 영재.
	Item Item();
	List<Item> ItemList();
	int itemTotalCnt(SearchVO search);
	
	// 효주.
	boolean addItem(Item item);
	List<Item> recentItem();
	List<Item> likeItem();
	List<Category> cateList();
}
