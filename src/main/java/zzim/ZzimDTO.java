package zzim;

public class ZzimDTO {
	int code, itemCode;
	String buyerId;
	
	public ZzimDTO(int code, int itemCode, String buyerId) {
		this.code = code;
		this.itemCode = itemCode;
		this.buyerId = buyerId;
	}
	
	public ZzimDTO(int itemCode, String buyerId) {
		this.itemCode = itemCode;
		this.buyerId = buyerId;
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

}
