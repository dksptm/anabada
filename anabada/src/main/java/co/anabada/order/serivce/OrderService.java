package co.anabada.order.serivce;


import co.anabada.order.Order;

public interface OrderService  {

	Order selectPurchaseOrder(int OrderNum);

	// 효주.
	boolean addOrder(Order odr);
}
