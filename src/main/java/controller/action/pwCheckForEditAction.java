package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.UserDAO;
import user.UserDTO;

public class pwCheckForEditAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getSession().getAttribute("log").toString();
		String pw = request.getParameter("pw");
		UserDAO dao = UserDAO.getInstane();
		
		UserDTO user = dao.getUserById(id); 
		
		String url = "main?center=pwCheckForEdit&pwCheck=false";
		if(user.getPw().equals(pw)) {
			url = "main?center=EditPersonalInfo";
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
