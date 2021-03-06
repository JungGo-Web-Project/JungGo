package zzim;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import comment.CommentDTO;
import user.UserDTO;
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
			String sql = "select* from zzim";
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
	
	public ArrayList<ZzimDTO> getZzimById(String id){
		zzim = new ArrayList<ZzimDTO>();
		
		try {
			conn = DBManager.getConnection();
			String sql = "select* from zzim where buyerId = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
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
	
	public ArrayList<ZzimDTO> getZzimByItem(int itemCodeNum){
		zzim = new ArrayList<ZzimDTO>();
		
		try {
			conn = DBManager.getConnection();
			String sql = "select* from zzim where itemCode = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, itemCodeNum);
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
	public void deleteUserZzim(UserDTO user) {
		try {
			conn = DBManager.getConnection();
			String sql = "delete from zzim where buyerId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
