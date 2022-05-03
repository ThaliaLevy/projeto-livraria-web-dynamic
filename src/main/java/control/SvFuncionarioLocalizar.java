package control;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.entidade.Cliente;
import model.persistencia.Conexao;

@WebServlet("/SvFuncionarioLocalizar")
public class SvFuncionarioLocalizar extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cpf = request.getParameter("cpf");
		String senha = request.getParameter("senha");
		String mensagem = "";
		Cliente c = new Cliente();
		
		//recebendo valores de uma instância na variável 'teste', do tipo 'Cliente'

		Cliente cliente = c.localizarPeloCpf(cpf, senha);
		
		if(cliente != null) {
			request.setAttribute("cpf", cliente.getCpf());
			request.setAttribute("senha", cliente.getSenha());
		}else {
			mensagem = "Dados incorretos. Por favor, tente novamente.";
		}

		request.setAttribute("mensagem", mensagem);
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
		  /* contando tamanho da tabela, numero de colunas, etc
			 
			Statement stm = cn.conn.createStatement();
			ResultSet result = stm.executeQuery("SELECT * FROM Cliente");
			ResultSetMetaData rsmd = result.getMetaData();
			result.next();
			
			int quantidadeColunas = rsmd.getColumnCount();
			
			for(int i = 1; i <= quantidadeColunas; i++) {
				rsmd.getColumnName(1);
				rsmd.getTableName(1);
				rsmd.getColumnDisplaySize(1);
			} */
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
