package co.anabada.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Control {

	// 구현클래스들이 모두 exec 메소드를 실행하도록 하기위한 인터페이스.//완료

	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;

}
