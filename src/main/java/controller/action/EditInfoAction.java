package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.UserDAO;
import user.UserDTO;

public class EditInfoAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getSession().getAttribute("log").toString();
		String pw = request.getParameter("pw");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		UserDAO dao = UserDAO.getInstane();
		UserDTO user = dao.getUserById(id);
		 
		if(user != null) {
			if(!pw.equals(user.getPw())) user.setPw(pw);
			if(!phone.equals(user.getPhone())) user.setPhone(phone);
			if(!address.equals(user.getAddress())) user.setAddress(address);
			
			dao.editUser(user);
		}
		
		request.getRequestDispatcher("myPage").forward(request, response);
	}
	
}
