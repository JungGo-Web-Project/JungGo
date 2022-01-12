package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import user.UserDTO;
import util.DBManager;

public class boardDAO {
	private boardDAO() {}
	private static boardDAO instance = new boardDAO();
	public static boardDAO getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<boardDTO> boards = null;
	
	public ArrayList<boardDTO> getBoard(){
		boards = new ArrayList<boardDTO>();
		
		try {
			conn = DBManager.getConnection();
			String sql = "select* from board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				String category = rs.getString(2);
				String title = rs.getString(3);
				String content = rs.getString(4);
				String id = rs.getString(5);
				String password = rs.getString(6);
				int view = rs.getInt(7);
				Timestamp date = rs.getTimestamp(8);
				
				boardDTO board = new boardDTO(code, category, title, content, id, password, view, date);
				boards.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return boards;
	}
	
	public void addBoard(boardDTO board) {
		try {
			conn = DBManager.getConnection();
			String sql = "insert into board(category, title, content, id, password, date) value (?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getCategory());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getContent());
			pstmt.setString(4, board.getId());
			pstmt.setString(5, board.getPassword());
			pstmt.setTimestamp(6, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			
			pstmt.executeUpdate();
			
			System.out.println("보드 작성 성공!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void updateBoard(boardDTO board, int code) {
		try {
			conn = DBManager.getConnection();
			String sql = "UPDATE board SET title = ?, content = ?, password = ?, date = ? WHERE code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getPassword());
			pstmt.setTimestamp(4, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			pstmt.setInt(5, code);
			
			pstmt.executeUpdate();
			
			System.out.println("보드 수정 성공!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void deleteBoard(int code) {
		try {
			conn = DBManager.getConnection();
			String sql = "delete from board where code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, code);
			
			pstmt.executeUpdate();
			
			System.out.println("삭제 완료");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void viewBoard(boardDTO board) {
		try {
			conn = DBManager.getConnection();
			String sql = "update board set view = view + 1 where code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board.getCode());
			
			pstmt.executeUpdate();
			
			System.out.println("조회수 증가");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public boolean checkBoard(String id, String password, int code) {
		ArrayList<boardDTO> board = getBoard();
		for(int i=0; i<board.size(); i++) {
			if(board.get(i).getCode() == code && board.get(i).getId().equals(id) && board.get(i).getPassword().equals(password)) {
				return true;
			}
		}
		return false;
	}
	
	public ArrayList<boardDTO> myBoardList(String boardCategory,String userId){
		ArrayList<boardDTO> list = new ArrayList<>();
		try {
			conn = DBManager.getConnection();
			String sql = "select * from board where category=? id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardCategory);
			pstmt.setString(2, userId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				String category = rs.getString(2);
				String title = rs.getString(3);
				String content = rs.getString(4);
				String id = rs.getString(5);
				String password = rs.getString(6);
				int view = rs.getInt(7);
				Timestamp date = rs.getTimestamp(8);
				
				boardDTO board = new boardDTO(code, category, title, content, id, password, view, date);
				list.add(board);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
