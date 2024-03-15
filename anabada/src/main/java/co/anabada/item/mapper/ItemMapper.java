package co.anabada.item.mapper;

import java.util.List;

import co.anabada.item.Item;

public interface ItemMapper {
	
	// 영재.
	Item selectItem(int ino);
	List<Item> ItemList();
	
	// 효주.
	int insertItem(Item item);

}
