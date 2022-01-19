package comment;

import java.sql.Timestamp;

public class CommentDTO {
	private int code, itemCode, num; // num = 1(판매자) / num = 2(구매자)
	private String buyerId, content;

	private Timestamp date;
	
	public CommentDTO(int code, int itemCode, String buyerId, String content, Timestamp date, int num){
		this.code = code;
		this.itemCode = itemCode;
		this.buyerId = buyerId;
		this.content = content;
		this.date = date;
		this.num = num;
	}
	
	public CommentDTO(int itemCode, String buyerId, String content, int num){
		this.itemCode = itemCode;
		this.buyerId = buyerId;
		this.content = content;
		this.num = num;
	}
	
	public int getNum() {
		return num;
	}

	public int getCode() {
		return code;
	}

	public int getItemCode() {
		return itemCode;
	}

	public String getBuyerId() {
		return buyerId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getDate() {
		return date;
	}
	
	
}
