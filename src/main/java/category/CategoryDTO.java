package category;

public class CategoryDTO {
	private int code;
	private String category;
	
	public CategoryDTO(int code, String category) {
		this.code = code;
		this.category = category;
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
	
	
}
