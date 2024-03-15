package co.anabada.cart.service;

import java.util.List;

import co.anabada.cart.Cart;

public interface CartService {
	
	// 장바구니 목록
	List<Cart> cartList();
	
	// 등록
	boolean addCart(Cart cart);
	
}
