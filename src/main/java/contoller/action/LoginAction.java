package contoller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.UserDAO;
import user.UserDTO;

public class LoginAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//dao로 로그인확인
		UserDAO dao = UserDAO.getInstane();
		ArrayList<UserDTO> users = dao.getUsers();
		
		
		boolean login = false;
		for(UserDTO u : users) {
			if(u.getId().equals(id) && u.getPw().equals(pw)) {
				login = true;
			}
		}
		
		String url = "login";
		if(login) {
			HttpSession session = request.getSession();
			session.setAttribute("log", id);
			url = "main";
		}
		request.getRequestDispatcher(url).forward(request, response);							
		
	}

}
