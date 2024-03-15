package co.anabada.item.mapper;

import java.util.List;

import co.anabada.item.Item;

public interface ItemMapper {
	Item selectItem(int ino);
	List<Item> ItemList();

}
