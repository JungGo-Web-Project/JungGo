package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDAO;
import board.BoardDTO;

public class boardWriteFormAction implements Action  {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String password = request.getParameter("password");
		String id = request.getParameter("id");
		String category = request.getParameter("category");
		
		BoardDAO dao = BoardDAO.getInstance();
		
		BoardDTO temp = new BoardDTO(title, category, content, id, password);
		dao.addBoard(temp);
		
		request.getRequestDispatcher("main?center=boardMain").forward(request, response);
		
	}

}
