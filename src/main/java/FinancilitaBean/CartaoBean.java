package FinancilitaBean;

public class CartaoBean {

	private int cd_cartao;
	private int user_cpf;
	private int num_last4;
	private String nm_cartao;

	public CartaoBean() {

	}

	public CartaoBean(int cd_cartao, int user_cpf, int num_last4, String nm_cartao) {
		super();
		this.cd_cartao = cd_cartao;
		this.user_cpf = user_cpf;
		this.num_last4 = num_last4;
		this.nm_cartao = nm_cartao;
	}

	public int getCd_cartao() {
		return cd_cartao;
	}

	public void setCd_cartao(int cd_cartao) {
		this.cd_cartao = cd_cartao;
	}

	public int getUser_cpf() {
		return user_cpf;
	}

	public void setUser_cpf(int user_cpf) {
		this.user_cpf = user_cpf;
	}

	public int getNun_last4() {
		return num_last4;
	}

	public void setNun_last4(int nun_last4) {
		this.num_last4 = nun_last4;
	}

	public String getNm_cartao() {
		return nm_cartao;
	}

	public void setNm_cartao(String nm_cartao) {
		this.nm_cartao = nm_cartao;
	}

}
