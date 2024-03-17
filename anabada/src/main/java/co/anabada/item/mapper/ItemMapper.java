package co.anabada.item.mapper;

import java.util.List;

import co.anabada.common.SearchVO;
import co.anabada.item.Category;
import co.anabada.item.Item;

public interface ItemMapper {
	
	// 영재.
	Item selectItem(int ino);
	List<Item> ItemList(SearchVO search);
	int getTotalCnt(SearchVO search);
	List<Item> ItemList();
	
	// 효주.
	int insertItem(Item item);
	List<Item> recentItem();
	List<Item> likeItem();
	List<Category> cateList();

}
