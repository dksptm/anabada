package co.anabada.nego.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.anabada.common.Control;
import co.anabada.nego.Nego;
import co.anabada.nego.service.NegoService;
import co.anabada.nego.service.NegoServiceImpl;

public class NegoFormControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/json;charset=utf-8");

		String itemNum = req.getParameter("itemNum");
		System.out.println(itemNum);
		NegoService svc = new NegoServiceImpl();
		List<Nego> negoForm = svc.negoForm(Integer.parseInt(itemNum));

		System.out.println("negoForm: " + negoForm);
		req.setAttribute("negoForm", negoForm);

		String path = "WEB-INF/view/nego/jsp/negoForm.jsp";
		RequestDispatcher dispatch = req.getRequestDispatcher(path);
		dispatch.forward(req, resp);
	}

}
