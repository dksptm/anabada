package co.anabada.item.control;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.anabada.common.Control;
import co.anabada.item.Item;
import co.anabada.item.service.ItemService;
import co.anabada.item.service.ItemServiceImpl;

public class ModifyItemControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		// MultipartRequest 생성 및 파라미터 받아옴.
		String savePath = req.getServletContext().getRealPath("images"); // 이미지 저장경로.
		int maxSize = 1024 * 1024 * 5; // 최대크기(5mb로 설정).
		String enc = "utf-8"; // 인코딩방식.
		MultipartRequest multi = 
				new MultipartRequest(req, savePath, maxSize, enc, new DefaultFileRenamePolicy());
		
		String ino = multi.getParameter("ino");
		String name = multi.getParameter("name");
		String cate = multi.getParameter("myCate");
		String price = multi.getParameter("price");
		String info = multi.getParameter("info");
		String pselect = multi.getParameter("pselect");
		String dselect = multi.getParameter("dselect");			
		
		// 받은 파라미터로 아이템 인스턴스생성.
		Item item = new Item();
		item.setItemNum(Integer.parseInt(ino));
		item.setItemName(name);
		item.setCategoryId(cate);
		item.setItemPrice(Integer.parseInt(price));
		item.setItemInfo(info);
		item.setPselect(pselect);
		item.setDselect(dselect);
		
		// 이미지 수정 필요한지.
		String imgFlag = multi.getParameter("imgFlag");
		String firstImg = multi.getParameter("firstImg");
		
		if (imgFlag.equals("YES")) {
			// 이미지 수정할 경우 기존이미지 삭제
			String path = req.getServletContext().getRealPath("images");
			String pathImg = Paths.get(path, firstImg).toString();
			File firstImgDel = new File(pathImg);
			
			if(firstImgDel.exists()) {
				firstImgDel.delete();
				System.out.println("먼저있던 사진삭제함.");
			} else {
				System.out.println("이상하게 첫번째 사진이 없네요...");
			}
			
			// 새로운 이미지 파일명 가져와서 아이템에 세팅.
			String img = multi.getFilesystemName("imgModify");
			item.setItemImage(img);
				
		} else if (imgFlag.equals("NO")) {
			// 이미지 수정안할경우 기존이미지명으로 세팅.
			item.setItemImage(firstImg);
			System.out.println(item);
		}
		
		// 매퍼실행.
		ItemService ivc = new ItemServiceImpl();
		if(ivc.modifyItem(item)) {
			resp.sendRedirect("item.do?itemNum=" + ino);
		} else {
			req.setAttribute("message", "아이템수정 실패.");
			String path = "main/error.tiles";
			req.getRequestDispatcher(path).forward(req, resp);
		}

	}

}
