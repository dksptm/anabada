package co.anabada.nego.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.anabada.common.Control;
import co.anabada.nego.Nego;
import co.anabada.nego.service.NegoService;
import co.anabada.nego.service.NegoServiceImpl;

public class AddnegoChatControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/json;charset=utf-8");
		
		String itemNum = req.getParameter("itemNum");
		String negoChat = req.getParameter("negoChat");
		String memberNum = req.getParameter("memberNum");
		String memberName = req.getParameter("memberName");
		
		Nego nego = new Nego();
		nego.setItemNum(Integer.parseInt(itemNum));
		nego.setMemberNum(Integer.parseInt(memberNum));
		nego.setNegoChat(negoChat);
		nego.setMemberName(memberName);
		System.out.println("nego: " + nego);
		
		 System.out.println("itemNum " + itemNum);
		    System.out.println("negoChat " + negoChat);
		    System.out.println("memberNum " + memberNum);
		
		NegoService svc = new NegoServiceImpl();
		Map<String, Object> map = new HashMap<>();
		if (svc.AddnegoChat(nego)) {
			map.put("retCode", "OK");
			map.put("retVal", nego);

		} else {
			map.put("retCode", "NG");

		}
		Gson gson = new GsonBuilder().create();
		resp.getWriter().print(gson.toJson(map));

	  }
	}


