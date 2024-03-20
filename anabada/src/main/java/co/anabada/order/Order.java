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
		private String 	itemPrice; 		// 상품가격
		private int		memberNum; 		// 판매자 정보(번호)
		private String	orderType;		// 거래방법
		private String  deliveryHow; 	// 바로결제 or 네고
		private int		deliveryFee; 	// 택배가격
		private String  accountNum;		// 계좌번호
		private String	deliveryAddress;// 배송주소 .. 택배(구매자입력)
		private String	memberPhone;	// 판매자번호
		private String	paymentType; 	// 결제수단
		private Date	paymentDate;	// 결제일시
		private String	orderStatus; 	// 주문상태 - 주문진행/ 주문확인 / 주문취소 / 주문완료
		
		
}	
