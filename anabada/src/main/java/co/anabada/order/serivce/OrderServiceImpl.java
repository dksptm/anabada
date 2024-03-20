package co.anabada.order.serivce;
import java.util.List;

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

	

}
