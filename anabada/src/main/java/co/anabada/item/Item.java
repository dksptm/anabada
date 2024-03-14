package co.anabada.item;

import java.util.Date;

import lombok.Data;

@Data
public class Item {
	private int itemNum;
	private String categoryId;
	private int memberNum;
	private String itemName;
	private int itemPrice;
	private String itemImage;
	private String itemInfo;
	private String itemStatus;
	private Date itemDate;

}
