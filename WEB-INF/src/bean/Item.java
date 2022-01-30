package bean;

public class Item {

	private Product product;
	private int count;
	private int login_id;
	private String dateTimeString;

	public Product getProduct() {
		return product;
	}

	public int getCount() {
		return count;
	}

	public int getLogin_id() {
		return this.login_id;
	}

	public String getDateTimeString() {
		return this.dateTimeString;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public void setLogin_id(int login_id) {
		this.login_id = login_id;
	}

	public void setDateTimeString(String dateTimeString) {
		this.dateTimeString = dateTimeString;
	}

}
