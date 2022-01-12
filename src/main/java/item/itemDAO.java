package item;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import utility.DBManager;

public class itemDAO {
	private itemDAO() {}
	private static itemDAO instance = new itemDAO();
	public static itemDAO getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<itemDTO> items = null;
	
	public ArrayList<itemDTO> getItem(){
		items = new ArrayList<itemDTO>();
		
		try {
			conn = DBManager.getConnection();
			String sql = "select* from items";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				String category = rs.getString(2);
				String title = rs.getString(3);
				String content = rs.getString(4);
				String sellerId = rs.getString(5);
				String buyerId = rs.getString(6);
				String status = rs.getString(7);
				String option1 = rs.getString(8);
				String option2 = rs.getString(9);
				int num = rs.getInt(10);
				int price = rs.getInt(11);
				int view = rs.getInt(12);
				Timestamp date = rs.getTimestamp(13);
				
				itemDTO item = new itemDTO(code, category, title, content, sellerId, buyerId, status, option1, option2, num, price, view, date);
				items.add(item);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return items;
	}
	
	public void addItem(itemDTO item) {
		try {
			conn = DBManager.getConnection();
			String sql = "insert into items (category, title, content, sellerId, status, option1, option2, num, price, date) value (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, item.getCategory());
			pstmt.setString(2, item.getTitle());
			pstmt.setString(3, item.getContent());
			pstmt.setString(4, item.getSellerId());
			pstmt.setString(5, item.getStatus());
			pstmt.setString(6, item.getOption1());
			pstmt.setString(7, item.getOption2());
			pstmt.setInt(8, item.getNum());
			pstmt.setInt(9, item.getPrice());
			pstmt.setTimestamp(10, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			
			pstmt.executeUpdate();
			
			System.out.println("상품 작성 성공!");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateBoard(itemDTO item, int code) {
		try {
			conn = DBManager.getConnection();
			String sql = "UPDATE items SET category = ?, title = ?, content = ?, status = ?, option1 = ?, option2 = ?, num = ?, price = ?, date = ? WHERE code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, item.getCategory());
			pstmt.setString(2, item.getTitle());
			pstmt.setString(3, item.getContent());
			pstmt.setString(4, item.getStatus());
			pstmt.setString(5, item.getOption1());
			pstmt.setString(6, item.getOption2());
			pstmt.setInt(7, item.getNum());
			pstmt.setInt(8, item.getPrice());
			pstmt.setTimestamp(9, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			pstmt.setInt(10, code);
			
			pstmt.executeUpdate();
			
			System.out.println("상품 수정 성공!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void deleteItem(int code) {
		try {
			conn = DBManager.getConnection();
			String sql = "delete from items where code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, code);
			
			pstmt.executeUpdate();
			
			System.out.println("상품 삭제 완료");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void viewItem(int code) {
		try {
			conn = DBManager.getConnection();
			String sql = "update items set view = view + 1 where code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, code);
			
			pstmt.executeUpdate();
			
			System.out.println("상품 조회수 증가");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void buyItem(String buyerId, int code) {
		try {
			conn = DBManager.getConnection();
			String sql = "update items set buyerId = ? where code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, buyerId);
			pstmt.setInt(2, code);
			
			pstmt.executeUpdate();
			
			System.out.println("상품 구매 완료");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
