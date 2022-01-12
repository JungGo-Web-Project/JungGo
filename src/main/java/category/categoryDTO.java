package category;

public class categoryDTO {
	private int code;
	private String category, img;
	
	public categoryDTO(int code, String category,String img) {
		this.code = code;
		this.category = category;
		this.img = img;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImg() {
		return img;
	}

	public int getCode() {
		return code;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	
}
