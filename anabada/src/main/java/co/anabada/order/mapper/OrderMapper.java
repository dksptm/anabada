package co.anabada.order.mapper;

import co.anabada.order.Order;

public interface OrderMapper {

	Order selectPurchaseOrder(int orderNum);

	int orderCancle(int orderNum);

	// 효주.
	int insertOrder(Order odr);

	Order selectOdrCom(int orderNum);

}
