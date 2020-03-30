package bean;

public class Information {
	private String name;
	private String image;
	private String content;
	private String phone;
	private String address;
	private String email;
	
	public Information(String name, String image, String content, String phone, String address, String email) {
		super();
		this.name = name;
		this.image = image;
		this.content = content;
		this.phone = phone;
		this.address = address;
		this.email = email;
	}

	public Information() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Information [name=" + name + ", image=" + image + ", content=" + content + ", phone=" + phone
				+ ", address=" + address + ", email=" + email + "]";
	}
	
}
