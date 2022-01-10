package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBManager;

public class UserDAO {
	private UserDAO() {}
	private static UserDAO instance = new UserDAO();
	public static UserDAO getInstane() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public ArrayList<UserDTO> getUsers(){
		ArrayList<UserDTO> users = new ArrayList<UserDTO>();
		try {
			conn = DBManager.getConnection();
			String sql = "select * from users";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				String id = rs.getString(2);
				String pw = rs.getString(3);
				String name = rs.getString(4);
				String phone = rs.getString(5);
				String address = rs.getString(6);
				
				UserDTO user = new UserDTO(code, id, pw, name, phone, address);
				users.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return users;
	}
	
	public void addUser(UserDTO user) {
		try {
			conn = DBManager.getConnection();
			String sql = "insert into users(id,pw,name,phone,address) values(?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPw());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getPhone());
			pstmt.setString(5, user.getAddress());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean checkDup(String id) {
		ArrayList<UserDTO> users = getUsers();
		
		for(UserDTO u : users) {
			if(id.equals(u.getId())) {
				return true;
			}
		}
		return false;
	}
	
	public UserDTO getUserById(String id) {
		ArrayList<UserDTO> users = getUsers();
		for(UserDTO user : users) {
			if(id.equals(user.getId())) {
				return user;
			}
		}
		return null;
	}
	
	public void editUser(UserDTO user) {
		try {
			conn = DBManager.getConnection();
			String sql = "update users set pw=?, phone=?, address=? where code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getPw());
			pstmt.setString(2, user.getPhone());
			pstmt.setString(3, user.getAddress());
			pstmt.setInt(4, user.getCode());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
