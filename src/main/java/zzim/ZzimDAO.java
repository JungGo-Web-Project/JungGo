package zzim;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import comment.CommentDTO;
import utility.DBManager;


public class ZzimDAO {
	private ZzimDAO() {}
	private static ZzimDAO instance = new ZzimDAO();
	public static ZzimDAO getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<ZzimDTO> zzim = null;
	
	public ArrayList<ZzimDTO> getZzim(){
		zzim = new ArrayList<ZzimDTO>();
		
		try {
			conn = DBManager.getConnection();
			String sql = "select* from comment";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				int itemCode = rs.getInt(2);
				String buyerId = rs.getString(3);
				
				ZzimDTO z = new ZzimDTO(code, itemCode, buyerId);
				zzim.add(z);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return zzim;
	}
	
	public void addZzim(ZzimDTO z) {
		try {
			conn = DBManager.getConnection();
			String sql = "insert into zzim (itemCode, buyerId) value (?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, z.getItemCode());
			pstmt.setString(2, z.getBuyerId());
			pstmt.executeUpdate();
			
			System.out.println("찜 성공!");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean checkZzim(int code, String id) {
		ArrayList<ZzimDTO> temp = getZzim();
		for(int i=0; i<temp.size(); i++) {
			if(temp.get(i).getBuyerId().equals(id) && code == temp.get(i).getItemCode()) {
				return true;
			}
		}
		return false;
	}
}
