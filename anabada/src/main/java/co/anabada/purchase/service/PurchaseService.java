package co.anabada.purchase.service;

import java.util.List;

import co.anabada.purchase.Purchase;

public interface PurchaseService {

	boolean removePurchaseList(int orderNum);

	boolean purchaseConfirm(int orderNum);

	List<Purchase> purchaseList(int memberNum);

}
