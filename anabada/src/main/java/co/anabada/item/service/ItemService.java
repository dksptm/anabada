package co.anabada.item.service;

import java.util.List;

import co.anabada.common.SearchVO;
import co.anabada.item.Category;
import co.anabada.item.Item;

public interface ItemService {
	
	// 영재.
	Item getItem(int in);
	List<Item> ItemList(String cname);
	List<Item> InameList(String iname);
	List<Item> ItemList();
	
	//int itemTotalCnt(SearchVO search);
	List<Item> ItemList1(SearchVO search);
	int itemTotalCnt(SearchVO search);
	
	// 효주.
	boolean addItem(Item item);
	List<Item> recentItem();
	List<Item> likeItem();
	List<Category> cateList();
	boolean changeItem(String sts, int ino);
	
	// 진경
	List<Item> shopList();
	
	// 주완
	List<Item> sellItemList(int memberNum);
	
	boolean sellItemCancle(int itemNum);
	
	
	
	Item selectSellItemList(int itemNum);
	
	
	
	
	
}
