package co.anabada.order.serivce;

import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.order.Order;
import co.anabada.order.mapper.OrderMapper;

public class OrderServiceImpl implements OrderService {
	SqlSession session = DataSource.getInstance().openSession(true);
	OrderMapper mapper = session.getMapper(OrderMapper.class);
	
	@Override
	public Order selectPurchaseOrder(int OrderNum) {
		return mapper.selectPurchaseOrder(OrderNum);
	}

	@Override
	public boolean orderCancle(int orderNum) {
		return mapper.orderCancle(orderNum)==1;
	}

	// 효주.
	@Override
	public boolean addOrder(Order odr) {
		return mapper.insertOrder(odr) == 1;
	}

	@Override
	public Order odrComResult(int orderNum) {
		return mapper.selectOdrCom(orderNum);
	}
	
}
