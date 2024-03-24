package co.anabada.purchase.mapper;

import java.util.List;

import co.anabada.purchase.Purchase;

public interface PurchaseMapper {


	int deletePurchaseList(int orderNum);

	int purchaseConfirm(int orderNum);

	List<Purchase> purchaseList(int memberNum);

}
