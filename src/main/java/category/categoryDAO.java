package category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import utility.DBManager;

public class categoryDAO {
	private categoryDAO() {}
	private static categoryDAO instance = new categoryDAO();
	public static categoryDAO getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<categoryDTO> categorys = null;
	
	public ArrayList<categoryDTO> getCategory(){
		categorys = new ArrayList<categoryDTO>();
		try {
			conn = DBManager.getConnection();
			String sql = "select* from category";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				String category = rs.getString(2);
				String img = rs.getString(3);
				
				categoryDTO cate = new categoryDTO(code, category, img);
				categorys.add(cate);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return categorys;
	}
	
	
}
