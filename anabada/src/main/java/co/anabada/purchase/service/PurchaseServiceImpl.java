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
	public boolean removePurchaseList(int orderNum) {
		return mapper.deletePurchaseList(orderNum) == 1;
	}

	@Override
	public boolean purchaseConfirm(int orderNum) {
		return mapper.purchaseConfirm(orderNum) == 1;
	}

	@Override
	public List<Purchase> purchaseList(int memberNum) {
		return mapper.purchaseList(memberNum);
	}
}
