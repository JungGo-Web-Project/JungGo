package category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import utility.DBManager;

public class CategoryDAO {
	private CategoryDAO() {}
	private static CategoryDAO instance = new CategoryDAO();
	public static CategoryDAO getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<CategoryDTO> categorys = null;
	
	public ArrayList<CategoryDTO> getCategory(){
		categorys = new ArrayList<CategoryDTO>();
		try {
			conn = DBManager.getConnection();
			String sql = "select* from category";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				String category = rs.getString(2);
				
				CategoryDTO cate = new CategoryDTO(code, category);
				categorys.add(cate);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return categorys;
	}
	
	public String getCategoryString(int code) {
		ArrayList<CategoryDTO> cate = getCategory();
		for(CategoryDTO c : cate) {
			if(c.getCode() == code) {
				return c.getCategory();
			}
		}
		return null;
	}
	
	
}
