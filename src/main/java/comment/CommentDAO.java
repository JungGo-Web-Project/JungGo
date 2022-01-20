package comment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import item.ItemDTO;
import utility.DBManager;


public class CommentDAO {
	private CommentDAO() {}
	private static CommentDAO instance = new CommentDAO();
	public static CommentDAO getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<CommentDTO> comment = null;
	
	public ArrayList<CommentDTO> getComment(){
		comment = new ArrayList<CommentDTO>();
		
		try {
			conn = DBManager.getConnection();
			String sql = "select* from comment";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				int itemCode = rs.getInt(2);
				String buyerId = rs.getString(3);
				String content = rs.getString(4);
				Timestamp date = rs.getTimestamp(5);
				int num = rs.getInt(6);
				
				CommentDTO com = new CommentDTO(code, itemCode, buyerId, content, date, num);
				comment.add(com);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return comment;
	}
	
	public void addComment(CommentDTO com) {
		try {
			conn = DBManager.getConnection();
			String sql = "insert into comment (itemCode, buyerId, content, date, num) value (?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, com.getItemCode());
			pstmt.setString(2, com.getBuyerId());
			pstmt.setString(3, com.getContent());
			pstmt.setTimestamp(4, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			pstmt.setInt(5, com.getNum());
			
			pstmt.executeUpdate();
			
			System.out.println("댓글 작성 성공!");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<CommentDTO> userComment(int Code, String Id){ // 상품 코드와 구매자 아이디를 검사해 해당 상품에 대한 해당 유저의 댓글 출력용
		comment = new ArrayList<CommentDTO>();
		
		try {
			conn = DBManager.getConnection();
			String sql = "select* from comment";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				int itemCode = rs.getInt(2);
				String buyerId = rs.getString(3);
				String content = rs.getString(4);
				Timestamp date = rs.getTimestamp(5);
				int num = rs.getInt(6);
				
				if(Code == code && Id.equals(buyerId)) {
					CommentDTO com = new CommentDTO(code, itemCode, buyerId, content, date, num);
					comment.add(com);					
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return comment;
	}
}
