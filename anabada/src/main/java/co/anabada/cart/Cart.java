package co.anabada.cart;

import lombok.Data;

@Data
public class Cart {
	private String cartStatus;
	private int cartNum;
	private String itemName;
	private int itemPrice;
	private int itemNum;
	private String memberName;
	private int memberNum;
	
}
