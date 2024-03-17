package co.anabada.item.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class AddItemControl implements Control {

	// 상품등록.
	// (파라미터에 이미지파일이 있음)
	// addItemForm.jsp -> addItem.
	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 문자인코딩.
		req.setCharacterEncoding("utf-8");
		
		// MultipartRequest 생성을 위한 정보.
		String savePath = req.getServletContext().getRealPath("images/itemimages"); // 이미지 저장경로.
		int maxSize = 1024 * 1024 * 5; // 최대크기(5mb로 설정).
		String enc = "utf-8"; // 인코딩방식.

		// MultipartRequest 생성하기.
		MultipartRequest multi = 
				new MultipartRequest(req, savePath, maxSize, enc, new DefaultFileRenamePolicy());
		
		// 이제 req가 아니라 multi에서 파라미터를 가져옴.
		String cate = multi.getParameter("cate");
		String memNum = multi.getParameter("mem_num");
		String name = multi.getParameter("name");
		String price = multi.getParameter("price");
		String info = multi.getParameter("info");
		String status = multi.getParameter("status");
		String img = multi.getFilesystemName("img"); // 변경된 이미지파일의 이름.
		
		// 아이템 인스턴스 생성(ivc.addItem()에 넣기위함).
		Item item = new Item(cate, Integer.parseInt(memNum), name, Integer.parseInt(price), img, info, status);
		
		ItemService ivc = new ItemServiceImpl();
		try {
			if(ivc.addItem(item)) {
				req.setAttribute("item", item);
				String path = "item/item.tiles";
				req.getRequestDispatcher(path).forward(req, resp);
			} else {
				req.setAttribute("message", "상품등록 중 에러가 발생했습니다.");
				String path = "main/error.tiles";
				req.getRequestDispatcher(path).forward(req, resp);
			} 
		} catch(Exception e) {
			e.printStackTrace();
			req.setAttribute("message", "Exception e");
			String path = "main/error.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		}

	}

}
