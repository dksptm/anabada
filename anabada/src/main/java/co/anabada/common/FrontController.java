package co.anabada.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.review.control.ReviewListControl;
import co.anabada.order.control.OrderForm;
import co.anabada.cart.control.AddCartControl;
import co.anabada.cart.control.CartListControl;
import co.anabada.cart.control.RemoveCartControl;
import co.anabada.cart.control.RemoveCartForm;
import co.anabada.diary.control.DiaryAddControl;
import co.anabada.diary.control.DiaryForm;
import co.anabada.diary.control.DiaryListControl;
import co.anabada.diary.control.DiaryModifyControl;
import co.anabada.diary.control.DiaryRemoveControl;
import co.anabada.item.control.ItemControl;
import co.anabada.item.control.ItemListControl;
import co.anabada.member.control.IdChk;
import co.anabada.member.control.LoginControl;
import co.anabada.member.control.LoginForm;
import co.anabada.member.control.SignUpControl;
import co.anabada.member.control.SignUpForm;
import co.anabada.item.control.AddItemControl;
import co.anabada.item.control.AddItemForm;
import co.anabada.item.control.CateListControl;
import co.anabada.test.TestAjaxControl;
import co.anabada.test.TestControl;


public class FrontController extends HttpServlet {
	
	Map<String, Control> controls;
	
	public FrontController() {
		controls = new HashMap<>();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 실행.");
		
		// 효주.
		controls.put("/main.do", new MainControl());
		controls.put("/test.do", new TestControl());
		controls.put("/testAjax.do", new TestAjaxControl()); // 멤버관련.
		controls.put("/signUpForm.do", new SignUpForm());
		controls.put("/signUp.do", new SignUpControl());
		controls.put("/idchk.do", new IdChk()); 
		controls.put("/loginForm.do", new LoginForm());
		controls.put("/login.do", new LoginControl());
		controls.put("/addItemForm.do", new AddItemForm()); // 상품관련.
		controls.put("/addItem.do", new AddItemControl()); 
		controls.put("/cateList.do", new CateListControl()); 
		controls.put("/orderForm.do", new OrderForm()); 
		
		// 영재.
		controls.put("/item.do", new ItemControl());
		controls.put("/itemList.do", new ItemListControl());

		// 진경.
		// cart
		controls.put("/cartList.do", new CartListControl());
		controls.put("/AddCart.do", new AddCartControl());
		controls.put("/RemoveCart.do", new RemoveCartControl());
		controls.put("/RemoveCartForm.do", new RemoveCartForm());
		
		// review
		controls.put("/reviewList.do", new ReviewListControl());
		
		// 주완.
		controls.put("/diaryForm.do",   new DiaryForm());
		controls.put("/diaryList.do",   new DiaryListControl());
		controls.put("/diaryAdd.do",    new DiaryAddControl());
		controls.put("/diaryModify.do", new DiaryModifyControl());
		controls.put("/diaryRemove.do", new DiaryRemoveControl());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service 실행.");
		
		req.setCharacterEncoding("utf-8");
		String uri = req.getRequestURI(); //  http://localhost:8080/anabada/item.do
		String context = req.getContextPath(); // /anabada
		String path = uri.substring(context.length()); // /item.do
		System.out.println("path: " + path);
		// path = item.do
		
		Control control = controls.get(path);
		
		// controls.get(path) = ItemControl
		control.exec(req, resp);
		// ItemControl 실행
	}
	
	

}
