package co.anabada.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.member.control.loginControl;
import co.anabada.member.control.loginForm;
import co.anabada.member.control.signUpControl;
import co.anabada.member.control.signUpForm;
import co.anabada.cart.control.AddCartControl;
import co.anabada.cart.control.CartListControl;
import co.anabada.diary.control.DiaryAddControl;
import co.anabada.diary.control.DiaryListControl;
import co.anabada.diary.control.DiaryModifyControl;
import co.anabada.diary.control.DiaryRemoveControl;
import co.anabada.item.control.ItemControl;
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
		controls.put("/testAjax.do", new TestAjaxControl());
		controls.put("/signUpForm.do", new signUpForm());
		controls.put("/signUp.do", new signUpControl());
		controls.put("/loginForm.do", new loginForm());
		controls.put("/login.do", new loginControl());
		
		// 영재.
		controls.put("/item.do", new ItemControl());

		// 진경.
		controls.put("/cartList.do", new CartListControl());
		controls.put("/cartAdd.do", new AddCartControl());
		
		// 주완.
		controls.put("diaryList.do",   new DiaryListControl());
		controls.put("diaryAdd.do",    new DiaryAddControl());
		controls.put("diaryModify.do", new DiaryModifyControl());
		controls.put("diaryRemove.do", new DiaryRemoveControl());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service 실행.");
		
		req.setCharacterEncoding("utf-8");
		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String path = uri.substring(context.length());
		System.out.println("path: " + path);
		
		Control control = controls.get(path);
		control.exec(req, resp);
	}
	
	

}
