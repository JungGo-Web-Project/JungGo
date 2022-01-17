package item;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import utility.DBManager;

public class ItemDAO {
	private ItemDAO() {}
	private static ItemDAO instance = new ItemDAO();
	public static ItemDAO getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<ItemDTO> items = null;
	
	public ArrayList<ItemDTO> getItem(){
		items = new ArrayList<ItemDTO>();
		
		try {
			conn = DBManager.getConnection();
			String sql = "select* from items";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				int category = rs.getInt(2);
				String title = rs.getString(3);
				String address = rs.getString(4);
				String content = rs.getString(5);
				String sellerId = rs.getString(6);
				String buyerId = rs.getString(7);
				String status = rs.getString(8);
				String option1 = rs.getString(9);
				String option2 = rs.getString(10);
				int num = rs.getInt(11);
				int price = rs.getInt(12);
				int view = rs.getInt(13);
				Timestamp date = rs.getTimestamp(14);
				
				ItemDTO item = new ItemDTO(code, category, title, address, content, sellerId, buyerId, status, option1, option2, num, price, view, date);
				items.add(item);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return items;
	}
	
	public void addItem(ItemDTO item) {
		try {
			conn = DBManager.getConnection();
			String sql = "insert into items (code, title, address, content, sellerId, status, option1, option2, num, price, date) value (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, item.getCode());
			pstmt.setInt(2, item.getCategory());
			pstmt.setString(3, item.getTitle());
			pstmt.setString(4, item.getAddress());
			pstmt.setString(5, item.getContent());
			pstmt.setString(6, item.getSellerId());
			pstmt.setString(7, item.getStatus());
			pstmt.setString(8, item.getOption1());
			pstmt.setString(9, item.getOption2());
			pstmt.setInt(10, item.getNum());
			pstmt.setInt(11, item.getPrice());
			pstmt.setTimestamp(12, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			
			pstmt.executeUpdate();
			
			System.out.println("상품 작성 성공!");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateBoard(ItemDTO item, int code) {
		try {
			conn = DBManager.getConnection();
			String sql = "UPDATE items SET category = ?, title = ?, address = ?, content = ?, status = ?, option1 = ?, option2 = ?, num = ?, price = ?, date = ? WHERE code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, item.getCategory());
			pstmt.setString(2, item.getTitle());
			pstmt.setString(3, item.getAddress());
			pstmt.setString(4, item.getContent());
			pstmt.setString(5, item.getStatus());
			pstmt.setString(6, item.getOption1());
			pstmt.setString(7, item.getOption2());
			pstmt.setInt(8, item.getNum());
			pstmt.setInt(9, item.getPrice());
			pstmt.setTimestamp(10, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			pstmt.setInt(11, code);
			
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
