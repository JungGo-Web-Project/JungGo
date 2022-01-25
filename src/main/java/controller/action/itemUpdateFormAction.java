package controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import item.ItemDAO;
import item.ItemDTO;

public class itemUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String path = request.getRealPath("upload");
		// 업로드 파일 크기 5mb 제한
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String enType = "UTF-8";
		MultipartRequest multi = new MultipartRequest(request, path, uploadFileSizeLimit, enType, new DefaultFileRenamePolicy());
		
		ItemDAO dao = ItemDAO.getInstance();
		int code = Integer.parseInt(multi.getParameter("code"));
		String option1 = multi.getParameter("option1");
		String option2 = multi.getParameter("option2");
		int category = Integer.parseInt(multi.getParameter("category"));
		String title = multi.getParameter("title");
		
		String address = multi.getParameter("address") + ", " + multi.getParameter("detailAddress");
		String content = multi.getParameter("content");
		
		String image_path = multi.getFilesystemName("image_path");
		
		int price = Integer.parseInt(multi.getParameter("price"));
		int num = Integer.parseInt(multi.getParameter("num"));
		
		ItemDTO item = new ItemDTO(category, title, address, content, option1, option2, num, price, image_path);
		
		dao.updateItem(item, code);
		request.getRequestDispatcher("main?center=center").forward(request, response);
		
	}

}
