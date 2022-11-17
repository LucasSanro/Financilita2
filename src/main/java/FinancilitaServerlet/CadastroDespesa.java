package FinancilitaServerlet;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.text.*;

import FinancilitaBean.*;
import FinancilitaDAO.*;
import FinancilitaFactoryDAO.*;
import FinancilitaException.DBException;



@WebServlet("/CadastroDespesa")
public class CadastroDespesa extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private DespesaDao dao;

	@Override
	public void init() throws ServletException {
		super.init();
		dao = DespesaFactoryDAO.getDespesaDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			
			boolean opcao;
			String nome = request.getParameter("nome");
			Double valor = Double.parseDouble(request.getParameter("valor"));
			
			
			SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
			Calendar fabricacao = Calendar.getInstance();
			fabricacao.setTime(format.parse(request.getParameter("data")));
			
			String reco = request.getParameter("recorrente");
			
			if(reco =="sim") {
				
				opcao=true;
				
			}else {
				
				 opcao=false;
			}
			
			DespesaBean despesa = new DespesaBean(0,nome,valor,fabricacao,opcao);
			dao.cadastrar(despesa);

			request.setAttribute("msg", "Despesa Cadastrada");
		} catch (DBException db) {
			db.printStackTrace();
			request.setAttribute("erro", "Erro ao criar Despesa");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("erro", "Por favor, valide os dados");
		}
		request.getRequestDispatcher("despesa.jsp").forward(request, response);
	}

}


