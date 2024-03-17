package co.anabada.item.service;

import java.util.List;

import co.anabada.common.SearchVO;
import co.anabada.item.Item;

public interface ItemService {
	List<Item> ItemList(SearchVO search);
	int itemTotalCnt(SearchVO search);

}
