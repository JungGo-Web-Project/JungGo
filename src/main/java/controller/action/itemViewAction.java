package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import item.ItemDAO;

public class itemViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String buyerId = request.getParameter("id");
		int code = Integer.parseInt(request.getParameter("code"));
		
		ItemDAO dao = ItemDAO.getInstance();
		
		dao.buyItem(buyerId, code);
		
		request.getRequestDispatcher("main?center=itemBuy").forward(request, response);
	}

}
