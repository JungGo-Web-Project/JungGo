package board;

import java.sql.Timestamp;

public class BoardDTO {
	private int code, view;
	private String category, title, content, id, password;
	private Timestamp date;
	
	public BoardDTO(String title, String category, String content, String id, String password) {
		this.title = title;
		this.category = category;
		this.content = content;
		this.id = id;
		this.password = password;
	}
	
	public BoardDTO(String title, String content, String password) {
		this.title = title;
		this.content = content;
		this.password = password;
	}
	
	public BoardDTO(int code, String category, String title, String content, String id, String password, int view, Timestamp date) {
		this.code = code;
		this.title = title;
		this.category = category;
		this.content = content;
		this.id = id;
		this.password = password;
		this.view = view;
		this.date = date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getCode() {
		return code;
	}

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}
	
}
