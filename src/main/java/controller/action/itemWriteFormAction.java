package controller.action;

import java.awt.print.Printable;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import item.ItemDAO;
import item.ItemDTO;

public class itemWriteFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ItemDAO dao = ItemDAO.getInstance();

		String option1 = request.getParameter("option1");
		String option2 = request.getParameter("option2");
		int category = Integer.parseInt(request.getParameter("category"));
		String title = request.getParameter("title");
		
		String address = request.getParameter("address") + ", " + request.getParameter("detailAddress");
		
		String content = request.getParameter("content");
		String sellerId = request.getParameter("sellerId");
		String image_path = request.getParameter("image_path");
		String status = "판매중";
		int price = Integer.parseInt(request.getParameter("price"));
		int num = Integer.parseInt(request.getParameter("num"));
		
		ItemDTO item = new ItemDTO(category, title, address, content, sellerId, status, option1, option2, num, price, image_path);
		dao.addItem(item);
		request.getRequestDispatcher("main?center=center").forward(request, response);
	}

}
