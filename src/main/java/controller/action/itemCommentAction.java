package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comment.CommentDAO;
import comment.CommentDTO;

public class itemCommentAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int code = Integer.parseInt(request.getParameter(""));
		int num = Integer.parseInt(request.getParameter(""));
		String id = request.getParameter("id");
		String content = request.getParameter("");
		
		CommentDAO dao = CommentDAO.getInstance();
		
		CommentDTO temp = new CommentDTO(code, id, content, num);
		dao.addComment(temp);
		request.getRequestDispatcher("main?center=itemComment").forward(request, response);
	}

}
