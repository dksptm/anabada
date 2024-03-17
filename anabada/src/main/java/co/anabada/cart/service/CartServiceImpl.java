package co.anabada.cart.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.anabada.cart.Cart;
import co.anabada.cart.mapper.CartMapper;
import co.anabada.common.DataSource;

public class CartServiceImpl implements CartService {

	SqlSession session = DataSource.getInstance().openSession(true);
	CartMapper mapper = session.getMapper(CartMapper.class);

	@Override
	public List<Cart> cartList() {
		return mapper.cartList();
	}

	@Override
	public boolean addCart(Cart cart) {
		return mapper.insertCart(cart) == 1;
	}

	@Override
	public boolean removeCart(String cartId) {
		return mapper.deleteCart(cartId) == 1;
	}


}