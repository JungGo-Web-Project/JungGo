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
		
		String option1 = "";
		String option2 = "";
		// on: 선택 / null: 미선택
		String status1 = request.getParameter("status1"); // 중고상품
		String status2 = request.getParameter("status2"); // 새상품
		if(status1.equals("on")) {
			option1 = "중고상품";
		}
		else {
			option1 = "새상품";
		}
		String change1 = request.getParameter("change1"); // 교환불가
		String change2 = request.getParameter("change2"); // 교환가능
		if(change1.equals("on")) {
			option2 = "교환불가";
		}
		else {
			option2 = "교환가능";
		}
		String category = request.getParameter("category");
		String title = request.getParameter("title");
		String address = request.getParameter("address");
		String content = request.getParameter("content");
		String sellerId = request.getParameter("sellerId");
		String status = "판매중";
		int price = Integer.parseInt(request.getParameter("price"));
		int num = Integer.parseInt(request.getParameter("num"));
		
		ItemDTO item = new ItemDTO(category, title, address, content, sellerId, status, option1, option2, num, price);
		dao.addItem(item);
		request.getRequestDispatcher("main?center=center").forward(request, response);
	}

}
