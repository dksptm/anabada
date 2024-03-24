package co.anabada.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.cart.control.AddCartControl;
import co.anabada.cart.control.CartListControl;
import co.anabada.cart.control.RemoveCartControl;
import co.anabada.cart.control.RemoveCartForm;
import co.anabada.diary.control.DiaryAddControl;
import co.anabada.diary.control.DiaryForm;
import co.anabada.diary.control.DiaryListControl;
import co.anabada.diary.control.DiaryModifyControl;
import co.anabada.diary.control.DiaryRemoveControl;
import co.anabada.item.control.AddItemControl;
import co.anabada.item.control.AddItemForm;
import co.anabada.item.control.CategoryListControl;
import co.anabada.item.control.ChangeItem;
import co.anabada.item.control.InameListControl;
import co.anabada.item.control.ItemControl;
import co.anabada.item.control.ItemListControl;
import co.anabada.item.control.ModifyItemControl;
import co.anabada.item.control.ModifyItemForm;
import co.anabada.item.control.SellItemCancleControl;
import co.anabada.item.control.SellItemListControl;
import co.anabada.item.control.ShopInfoControl;
import co.anabada.item.control.TotalCntControl;
import co.anabada.item.control.searchItemControl;
import co.anabada.member.control.IdChk;
import co.anabada.member.control.LoginControl;
import co.anabada.member.control.LoginForm;
import co.anabada.member.control.ModifyAccControl;
import co.anabada.member.control.MyInfoControl;
import co.anabada.member.control.MypageControl;
import co.anabada.member.control.SignUpControl;
import co.anabada.member.control.SignUpForm;
import co.anabada.nego.control.NegoContentAddControl;
import co.anabada.nego.control.NegoFormControl;
import co.anabada.order.control.AddOrderControl;
import co.anabada.order.control.OrderCancleControl;
import co.anabada.order.control.OrderComplete;
import co.anabada.order.control.OrderForm;
import co.anabada.order.control.selectPurchaseOrderForm;
import co.anabada.purchase.control.PurchaseConfirmControl;
import co.anabada.purchase.control.PurchaseListControl;
import co.anabada.purchase.control.deletePurchaseControl;
import co.anabada.review.control.AddReviewControl;
import co.anabada.review.control.AddReviewForm;
import co.anabada.review.control.RemoveReviewControl;
import co.anabada.review.control.RemoveReviewForm;
import co.anabada.review.control.ReviewListControl;
import co.anabada.test.TestAjaxControl;
import co.anabada.test.TestControl;
import co.anabada.test.TestPageControl;


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
		controls.put("/testPage.do", new TestPageControl());
		controls.put("/testAjax.do", new TestAjaxControl()); // 멤버관련.
		controls.put("/signUpForm.do", new SignUpForm());
		controls.put("/signUp.do", new SignUpControl());
		controls.put("/idchk.do", new IdChk()); 
		controls.put("/loginForm.do", new LoginForm());
		controls.put("/login.do", new LoginControl());
		controls.put("/addItemForm.do", new AddItemForm()); // 상품관련.
		controls.put("/addItem.do", new AddItemControl()); 
		controls.put("/changeItem.do", new ChangeItem()); 
		controls.put("/modifyItemForm.do", new ModifyItemForm()); 
		controls.put("/modifyItem.do", new ModifyItemControl()); 
		controls.put("/categoryList.do", new CategoryListControl()); 
		controls.put("/orderForm.do", new OrderForm()); 
		controls.put("/addOrder.do", new AddOrderControl()); 
		controls.put("/orderComplete.do", new OrderComplete()); 
		
		// 영재.
		controls.put("/item.do", new ItemControl());
		controls.put("/itemList.do", new ItemListControl());
		controls.put("/searchItem.do", new searchItemControl());
		controls.put("/inameList.do", new InameListControl());
		controls.put("/totalCnt.do", new TotalCntControl());

		// 진경.
		controls.put("/cartList.do", new CartListControl()); // 장바구니 리스트
		controls.put("/addCart.do", new AddCartControl());
		controls.put("/removeCart.do", new RemoveCartControl()); // 장바구니상품삭제
		controls.put("/removeCartForm.do", new RemoveCartForm()); // 
		
		controls.put("/shopInfo.do", new ShopInfoControl()); // 상점,가게
		controls.put("/myPage.do", new MypageControl()); // 마이페이지
		controls.put("/myInfo.do", new MyInfoControl()); // 내 정보
		controls.put("/modifyAcc.do", new ModifyAccControl()); // 계좌수정
		
		
		// review
		controls.put("/reviewList.do", new ReviewListControl()); // 후기목록
		controls.put("/addreview.do", new AddReviewControl());
		controls.put("/addreviewForm.do", new AddReviewForm());
		controls.put("/RemoveReview.do", new RemoveReviewControl());
		controls.put("/removeReviewForm.do", new RemoveReviewForm());
		
		// 주완.
		controls.put("/diaryForm.do",   new DiaryForm());
		controls.put("/diaryList.do",   new DiaryListControl());
		controls.put("/diaryAdd.do",    new DiaryAddControl());
		controls.put("/diaryModify.do", new DiaryModifyControl());
		controls.put("/diaryRemove.do", new DiaryRemoveControl());
		controls.put("/purchaseList.do", new PurchaseListControl());
		controls.put("/deletePurchase.do", new deletePurchaseControl());
		controls.put("/sellItemList.do" , new SellItemListControl());
		controls.put("/deleteSellItem.do", new SellItemCancleControl());
		controls.put("/selectPurchaseList.do", new selectPurchaseOrderForm());
		controls.put("/orderCancle.do", new OrderCancleControl());
		controls.put("/purchaseConfirm.do", new PurchaseConfirmControl());
		controls.put("/negoForm.do", new NegoFormControl());
		controls.put("/addContents.do", new NegoContentAddControl());
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
