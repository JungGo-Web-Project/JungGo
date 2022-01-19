package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zzim.ZzimDAO;
import zzim.ZzimDTO;

public class itemZzimAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int code = Integer.parseInt(request.getParameter("code"));
		String id = request.getParameter("id");
		
		ZzimDAO dao = ZzimDAO.getInstance();
		ZzimDTO zzim = new ZzimDTO(code, id);
		dao.addZzim(zzim);
		request.getRequestDispatcher("main?center=itemZzim").forward(request, response);
	}

}
