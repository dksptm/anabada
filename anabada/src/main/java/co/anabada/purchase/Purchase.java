package co.anabada.purchase;

import java.sql.Date;

import lombok.Data;

@Data
public class Purchase {
	private int purchaseNum;
	private int orderNum;
	private int totalPrice;
	private Date dueDate;
	private String orderStatus;
	private String paymentOk;
	private Date paymentDate;
	private String purchaseOk;
	private String paymentRefund;
	private String itemName;
	private int memberNum;
	private int itemNum;
	private String itemImage;
	private String itemStatus;
	private String sellerName;
	private String sellerNum;

}
