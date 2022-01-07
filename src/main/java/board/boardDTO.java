package board;

import java.sql.Timestamp;

public class boardDTO {
	private int code, view;
	private String title, content, id, password;
	private Timestamp date;
	
	public boardDTO(String title, String content, String id, String password) {
		this.title = title;
		this.content = content;
		this.id = id;
		this.password = password;
	}
	
	public boardDTO(String title, String content, String password) {
		this.title = title;
		this.content = content;
		this.password = password;
	}
	
	public boardDTO(int code, String title, String content, String id, String password, int view, Timestamp date) {
		this.code = code;
		this.title = title;
		this.content = content;
		this.id = id;
		this.password = password;
		this.view = view;
		this.date = date;
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
