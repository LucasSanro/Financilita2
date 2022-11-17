package FinancilitaTestesDAO;

import java.util.Calendar;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;



import FinancilitaBean.DespesaBean;

import FinancilitaDAO.DespesaDao;
import FinancilitaException.DBException;

import FinancilitaFactoryDAO.DespesaFactoryDAO;

public class TesteDespesaDAO {

	public static void main(String[] args) {

		DespesaDao dao = DespesaFactoryDAO.getDespesaDAO();
		
        DateFormat df = new SimpleDateFormat ("dd/MM/yyyy");
        df.setLenient (false);
        Date dt = null;
        
         try{dt = df.parse ("31/12/2006");}catch (ParseException ex) {
             System.out.println ("Data inválida. ");
             System.exit (1);
         }
         
         Calendar cal = Calendar.getInstance();
         cal.getTime();

		// cadastro teste

		boolean opa = true;
		
		DespesaBean conta = new DespesaBean(0,"Aluguel",564065,cal,true);
		try {
			dao.cadastrar(conta);
			System.out.println("Conta cadastrada.");
		} catch (DBException e) {
			e.printStackTrace();
		}
	}
}
