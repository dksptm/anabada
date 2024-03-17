package co.anabada.item.mapper;

import java.util.List;

import co.anabada.common.SearchVO;
import co.anabada.item.Item;

public interface ItemMapper {
	Item selectItem(int ino);
	List<Item> ItemList(SearchVO search);
	int getTotalCnt(SearchVO search);

}
