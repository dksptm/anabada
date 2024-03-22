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
	private String pselect;
	private String dselect;
	private String memberName; //판매자명
	
	
	// AddItemControl에서 사용하기 위함.
	public Item(String categoryId, int memberNum, String memberName, String itemName, int itemPrice, String itemImage, String itemInfo,
			String itemStatus, String pselect, String dselect) {
		super();
		this.categoryId = categoryId;
		this.memberNum = memberNum;
		this.memberName = memberName;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.itemImage = itemImage;
		this.itemInfo = itemInfo;
		this.itemStatus = itemStatus;
		this.pselect = pselect;
		this.dselect = dselect;
	}



	// shopInfo(상점)
	private int reviewScore;
	private String reviewComment;
	
	
	// category
	private String categoryName;
	private String parentCategory;
	
	//member
	private String memberId;
	private int memberScore;
	
}


