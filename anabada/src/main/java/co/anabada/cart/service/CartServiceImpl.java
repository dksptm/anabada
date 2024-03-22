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
	public boolean addCart(Cart cart) {
		return mapper.insertCart(cart) == 1;
	}

	@Override
	public boolean removeCart(Cart cart) {
		return mapper.deleteCart(cart) == 1;
	}

	@Override
	public List<Cart> cartList(int memberNum) {
		return mapper.cartList(memberNum);
	}
}