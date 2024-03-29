package co.anabada.order;

import java.util.Date;

import lombok.Data;

@Data
public class Order {
	
		private int		orderNum; 		// 주문번호
		private Date	orderDate;		// 주문날짜
		private int		itemNum; 		// 상품번호
		private String 	itemImage; 		// 상품이미지
		private String	itemName; 		// 상품명
		private String  memberId;
		private String 	itemPrice; 		// 상품가격
		private int		memberNum; 		// 구매자 정보(번호)
		private String	orderType;		// 거래방법
		private String  deliveryHow; 	// 택배 or 직거래
		private int		deliveryFee; 	// 택배가격
		private String  accountNum;		// 계좌번호
		private String	deliveryAddress;// 배송주소 .. 택배(구매자입력)
		private String	memberPhone;	// 구매자번호
		private String	paymentType; 	// 결제수단
		private Date	paymentDate;	// 결제일시
		private String	orderStatus; 	// 주문상태 - 주문진행/ 주문확인 / 주문취소 / 주문완료
		private String  purchaseOk;
		private String  itemStatus;
		private String  totalPirce;
		//효주.
		private int sellerNum;
		private String sellerName;
		private int totalPrice;
		private Date gihan;


}
