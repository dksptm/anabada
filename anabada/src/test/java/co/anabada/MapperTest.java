package co.anabada;

import java.util.List;

import co.anabada.cart.mapper.CartMapper;
import co.anabada.common.DataSource;
import co.anabada.review.Review;
import co.anabada.review.mapper.ReviewMapper;

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
		
		ReviewMapper mapper =
		DataSource.getInstance().openSession(true).getMapper(ReviewMapper.class);
		  
		List<Review> list = mapper.reviewList();
		for(Review r : list) {
			System.out.println(r.toString());
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
