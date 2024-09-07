package bean;


	import java.sql.Date;

	public class UserProfileBean {
	    private String email;
	    private String fullName;
	    private String phone;
	    private String address;
	   

	    // Default constructor
	    public UserProfileBean() {}

	    // Parameterized constructor
	    public UserProfileBean(String email, String fullName, String phone, String address, Date dob) {
	        this.email = email;
	        this.fullName = fullName;
	        this.phone = phone;
	        this.address = address;
	       
	    }

	    // Getters and setters
	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public String getFullName() {
	        return fullName;
	    }

	    public void setFullName(String fullName) {
	        this.fullName = fullName;
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

	   

	    @Override
	    public String toString() {
	        return "UserProfileBean [email=" + email + ", fullName=" + fullName + ", phone=" + phone + ", address=" + address + "]";
	    }
	}


