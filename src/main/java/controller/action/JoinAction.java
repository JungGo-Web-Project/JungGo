package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.UserDAO;
import user.UserDTO;

public class JoinAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		UserDAO dao = UserDAO.getInstane();
		String url="join";
		
		if(!dao.checkDup(id)) {
			UserDTO newUser = new UserDTO(id,pw,name,phone,address);
			dao.addUser(newUser);
			url="main";
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
