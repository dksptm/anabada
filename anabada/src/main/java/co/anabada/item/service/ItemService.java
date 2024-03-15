package co.anabada.item.service;

import java.util.List;

import co.anabada.item.Item;

public interface ItemService {
	
	// 영재.
	List<Item> ItemList();
	
	// 효주.
	boolean addItem(Item item);
}
