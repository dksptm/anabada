package co.anabada.order.mapper;

import java.util.List;

import co.anabada.order.Order;

public interface OrderMapper {

	Order selectPurchaseOrder(int orderNum);
	
}