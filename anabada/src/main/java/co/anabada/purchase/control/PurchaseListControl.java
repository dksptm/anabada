package co.anabada.purchase.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.purchase.Purchase;
import co.anabada.purchase.service.PurchaseService;
import co.anabada.purchase.service.PurchaseServiceImpl;


public class PurchaseListControl implements Control {
			
	 @Override
	    public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        	resp.setContentType("text/json;charset=utf-8");

	            PurchaseService svc = new PurchaseServiceImpl();
	            List<Purchase> purchaselist = svc.purchaseList();
	            req.setAttribute("purchaselist", purchaselist);
	            
	            System.out.println(purchaselist);
	            
	            String path = "purchase/purchaseList.tiles";
	            RequestDispatcher dispatch = req.getRequestDispatcher(path);
	            dispatch.forward(req, resp);
	       
	 }
}
	 
	
