package controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zzim.ZzimDAO;
import zzim.ZzimDTO;

public class itemViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String buyerId = request.getParameter("id");
		int code = Integer.parseInt(request.getParameter("code"));
		int check = Integer.parseInt(request.getParameter("check"));
		
		if(check == 2) { // 찜하고 나서 대화
			ZzimDAO dao = ZzimDAO.getInstance();
			ZzimDTO zzim = new ZzimDTO(code, buyerId);
			dao.addZzim(zzim);
			request.getRequestDispatcher("main?center=itemComment").forward(request, response);
		}
		else if(check == 1){			
			request.getRequestDispatcher("main?center=itemComment").forward(request, response);
		}
		
	}

}
