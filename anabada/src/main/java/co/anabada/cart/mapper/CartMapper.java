package co.anabada.cart.mapper;

import java.util.List;

import co.anabada.cart.Cart;

public interface CartMapper {
	// 목록
	List<Cart> cartList();
	// 등록
	int insertCart(Cart cart);
	// 삭제
	
}
