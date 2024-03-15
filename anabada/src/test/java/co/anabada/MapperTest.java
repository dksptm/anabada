package co.anabada;

import java.util.List;

import co.anabada.cart.Cart;
import co.anabada.cart.mapper.CartMapper;
import co.anabada.common.DataSource;
import co.anabada.item.Item;
import co.anabada.item.mapper.ItemMapper;

public class MapperTest {
	public static void main(String[] args) {
		// mapper 테스트.
		/*
		 * MemberMapper mapper =
		 * DataSource.getInstance().openSession(true).getMapper(MemberMapper.class);
		 * 
		 * List<Member> list = mapper.memberList(); for (Member m : list) {
		 * System.out.println(m.toString());
		 */

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
		 
		/*
		 * CartMapper mapper1 =
		 * DataSource.getInstance().openSession(true).getMapper(CartMapper.class);
		 * 
		 * System.out.println(mapper1.cartList());
		 */
		//ItemMapper mapper = DataSource.getInstance().openSession(true).getMapper(ItemMapper.class);
		//List<Item> list = mapper.ItemList();
		//for (Item m: list) {
			//System.out.println(m.toString());
		}
	}
//}
