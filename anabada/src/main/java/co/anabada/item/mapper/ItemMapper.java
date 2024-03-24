package co.anabada.item.mapper;

import java.util.List;

import co.anabada.common.SearchVO;
import co.anabada.item.Category;
import co.anabada.item.Item;

public interface ItemMapper {

	// 영재.
	List<Item> ItemList(String cname, int page);

	List<Item> ItemList();

	List<Item> ItemList1();

	List<Item> ItemList1(SearchVO search);

	List<Item> inameList(String cname, int page);

	Item selectItem(int ino);

	int getTotalCnt(SearchVO search);

	Item Item(int in);

	// 카테고리 리스트를 위한 토탈카운트.
	int getCateCnt(String cid);
	int getCateCnt2(String cid);
	

	// 효주.
	int insertItem(Item item);

	List<Item> recentItem();

	List<Item> likeItem();

	List<Category> cateList();

	int changeItem(String sts, int ino);

	int updateItem(Item item);

	// 진경.
	List<Item> shopList();

	// 주완
	List<Item> sellItemList(int memberNum);

	int sellItemCancle(int itemNum);

	Item selectSellItemList(int itemNum);

}
