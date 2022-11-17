package FinancilitaTestesDAO;

import java.util.Calendar;


import FinancilitaBean.DespesaBean;

import FinancilitaDAO.DespesaDao;
import FinancilitaException.DBException;

import FinancilitaFactoryDAO.DespesaFactoryDAO;

public class TesteDespesaDAO {

	public static void main(String[] args) {

		DespesaDao dao = DespesaFactoryDAO.getDespesaDAO();

		// cadastro teste

		boolean opa = true;
		
		DespesaBean conta = new DespesaBean(0,"Aluguel",564065,Calendar.getInstance(),true);
		try {
			dao.cadastrar(conta);
			System.out.println("Conta cadastrada.");
		} catch (DBException e) {
			e.printStackTrace();
		}
	}
}
