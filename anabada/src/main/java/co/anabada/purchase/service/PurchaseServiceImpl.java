package co.anabada.purchase.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.anabada.common.DataSource;
import co.anabada.purchase.Purchase;
import co.anabada.purchase.mapper.PurchaseMapper;

public class PurchaseServiceImpl implements PurchaseService {

	SqlSession session = DataSource.getInstance().openSession(true);
	PurchaseMapper mapper = session.getMapper(PurchaseMapper.class);

    @Override
    public List<Purchase> purchaseList() {
        return mapper.purchaseList();
    }

	@Override
	public boolean removePurchaseList(int orderId) {
		return mapper.deletePurchaseList(orderId) == 1;
	}
}