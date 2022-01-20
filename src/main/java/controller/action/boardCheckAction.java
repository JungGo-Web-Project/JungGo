package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDAO;

public class boardCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("pw");
		int num = Integer.parseInt(request.getParameter("num"));
		int code = Integer.parseInt(request.getParameter("code"));
		
		
		
		BoardDAO dao = BoardDAO.getInstance();
		String url = "";
		
		if(dao.checkBoard(id, password, code)) {
			if(num == 1) { // 수정
				url = "main?center=boardUpdateForm";
			}
			else { 		   // 삭제
				dao.deleteBoard(code);
				url = "main?center=boardMain";
			}
			request.getRequestDispatcher(url).forward(request, response);
		}
		else {
			url = "main?center=boardView";
			request.getRequestDispatcher(url).forward(request, response);
		}
	}
}
