package user;

public class UserDTO {
	private int code;
	private String id, pw, name, phone, postcode, address, section;
	
	public UserDTO(int code, String id, String pw, String name, String phone, String postcode, String address, String section) {
		this.code = code;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.postcode = postcode;
		this.phone = phone;
		this.address = address;
		this.section = section;
	}
	public UserDTO(String id, String pw, String name, String phone, String postcode, String address, String section) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.postcode = postcode;
		this.phone = phone;
		this.address = address;
		this.section = section;
	}
	
	public int getCode() {
		return code;
	}
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	
}
