package FinancilitaBean;

import br.com.fiap.store.util.CriptografiaUtils;

public class UserBean {

	private String email;
	private String password;
	
	public UserBean() {
	}
	
	public UserBean(String email, String password) {
		super();
		this.email = email;
		setPassword(password);
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		try {
			this.password = CriptografiaUtils.criptografar(password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}
