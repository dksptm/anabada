package co.anabada.item;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
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
	private int zzim;
	
	
	// AddItemControl에서 사용하기 위함.
	public Item(String categoryId, int memberNum, String itemName, int itemPrice, 
			String itemImage, String itemInfo, String itemStatus) {
		super();
		this.categoryId = categoryId;
		this.memberNum = memberNum;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.itemImage = itemImage;
		this.itemInfo = itemInfo;
		this.itemStatus = itemStatus;
	}
	
	// shopInfo(상점)
	private int reviewScore;
	private String reviewComment;
	
	
	// category
	private String categoryName;
	private String parentCategory;
	
}


