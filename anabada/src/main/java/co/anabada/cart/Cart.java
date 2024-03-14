package co.anabada.cart;

import lombok.Data;

@Data
public class Cart {
	private int cardId;
	private int memberNum;
	private int itemNum;
	private String cartStatus;
}
