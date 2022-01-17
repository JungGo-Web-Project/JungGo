package item;

import java.sql.Timestamp;

public class ItemDTO {
	private int code, category, num, price, view;
	private String  title, address, content, sellerId, buyerId, status, option1, option2, image_path;
	private Timestamp date;
	
	public ItemDTO(int code, int category, String title,String address,String content,String sellerId,String buyerId,String status,String option1,String option2,int num,int price,int view,Timestamp date, String image_path) {
		this.code = code;
		this.category = category;
		this.title = title;
		this.address = address;
		this.content = content;
		this.sellerId = sellerId;
		this.buyerId = buyerId;
		this.status = status;
		this.option1 = option1;
		this.option2 = option2;
		this.num = num;
		this.price = price;
		this.view = view;
		this.date = date;
		this.image_path = image_path;
	}
	

	public ItemDTO(int category, String title,String address,String content,String sellerId,String status,String option1,String option2,int num,int price, String image_path) {
		this.category = category;
		this.title = title;
		this.address = address;
		this.content = content;
		this.sellerId = sellerId;
		this.status = status;
		this.option1 = option1;
		this.option2 = option2;
		this.num = num;
		this.price = price;
		this.image_path = image_path;
	}
	
	public String getImage_path() {
		return image_path;
	}
	
	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}

	public int getCode() {
		return code;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getView() {
		return view;
	}

	public void setView(int view) {
		this.view = view;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
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

	public String getSellerId() {
		return sellerId;
	}

	public String getBuyerId() {
		return buyerId;
	}

	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public Timestamp getDate() {
		return date;
	}
	
	
}
