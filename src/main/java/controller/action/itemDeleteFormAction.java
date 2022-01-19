package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import item.ItemDAO;

public class itemDeleteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int code = Integer.parseInt(request.getParameter("code"));
		ItemDAO dao = ItemDAO.getInstance();
		dao.deleteItem(code);
		request.getRequestDispatcher("main?center=center").forward(request, response);
	}

}
