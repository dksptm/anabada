package co.anabada.cart;

import lombok.Data;

@Data
public class Cart {
	private String cartStatus;
	private int cartNum;
	private int itemNum;
	private String itemName;
	private int itemPrice;
	private String itemImage;

	private String memberName;
	private int memberNum;

}
