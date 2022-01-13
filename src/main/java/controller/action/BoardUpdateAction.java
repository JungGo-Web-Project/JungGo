package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDAO;
import board.BoardDTO;

public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String password = request.getParameter("password");
		int code = Integer.parseInt(request.getParameter("code"));
		
		BoardDTO board = new BoardDTO(title, content, password);
		BoardDAO dao = BoardDAO.getInstance();
		dao.updateBoard(board, code);
		
		request.getRequestDispatcher("main?center=boardMain").forward(request, response);
		
	}

}
