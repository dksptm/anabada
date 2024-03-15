package co.anabada;

import java.util.List;

import co.anabada.cart.Cart;
import co.anabada.cart.mapper.CartMapper;
import co.anabada.common.DataSource;

public class MapperTest {
	public static void main(String[] args) {
		// mapper 테스트.
		//MemberMapper mapper = DataSource.getInstance().openSession(true).getMapper(MemberMapper.class);

		//List<Member> list = mapper.memberList();
		//for (Member m : list) {
			//System.out.println(m.toString());
		//}	
		
		  CartMapper mapper =
		  DataSource.getInstance().openSession(true).getMapper(CartMapper.class);
		  
		List<Cart> list = mapper.cartList();
		for(Cart c : list) {
			System.out.println(c.toString());
		}
		 
	}
}

