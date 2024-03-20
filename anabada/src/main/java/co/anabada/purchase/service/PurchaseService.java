package co.anabada.purchase.service;

import java.util.List;


import co.anabada.purchase.Purchase;

public interface PurchaseService {
	List<Purchase> purchaseList();


	boolean removePurchaseList(int orderNum);






}
