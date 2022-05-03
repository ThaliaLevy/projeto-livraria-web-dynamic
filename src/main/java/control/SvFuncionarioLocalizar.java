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
		String tela = request.getParameter("tela");
		String mensagem = "";
		Cliente c = new Cliente();
		
		
		// testei e deu certo! proximo passo é inserir um name com o value igual ao nome da tela
		//e criar um switch case para verificar quais metodos do servlet devem rodar
		
		if(tela == ("login")) {
			//recebendo valores de uma instância na variável 'teste', do tipo 'Cliente'

			Cliente cliente = c.localizarPeloCpf(cpf, senha);
			
			if(cliente != null) {
				//request.setAttribute("cpf", cliente.getCpf());
				//request.setAttribute("senha", cliente.getSenha());

				request.getRequestDispatcher("menuPrincipal.jsp").forward(request, response);
			}else {
				mensagem = "Dados incorretos. Por favor, tente novamente.";

				request.setAttribute("mensagem", mensagem);
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}else {

			request.setAttribute("mensagem", "nao foi");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
