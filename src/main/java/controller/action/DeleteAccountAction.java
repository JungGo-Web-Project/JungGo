package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDAO;
import item.ItemDAO;
import user.UserDAO;
import user.UserDTO;

public class DeleteAccountAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getSession().getAttribute("log").toString();
		UserDAO userDao = UserDAO.getInstane();
		BoardDAO boardDao = BoardDAO.getInstance();
		ItemDAO itemDao = ItemDAO.getInstance();
		
		UserDTO user = userDao.getUserById(id);
		boardDao.deleteUserBoard(user);
		itemDao.deleteUserItem(user);
		userDao.deleteUser(user);
		
		request.getSession().removeAttribute("log");
		
		request.getRequestDispatcher("main").forward(request, response);
	}

}
