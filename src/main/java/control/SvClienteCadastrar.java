package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.entidade.Cliente;
import model.persistencia.PCliente;

@WebServlet("/SvClienteCadastrar")
public class SvClienteCadastrar extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nomeCliente = request.getParameter("nomeCliente");
		String idade = request.getParameter("idade");
		String sexo = request.getParameter("sexo");
		String senha = request.getParameter("senha");
		String cpf = request.getParameter("cpf");
		String mensagem, mensagemParaProgramador;

		Cliente c = new Cliente(nomeCliente, idade, sexo, senha, cpf);
		
		if(c.guardarDados() == true) {
			mensagem = "Cadastrado com sucesso!";
			nomeCliente = c.getNomeCliente();
			
		}else {
			mensagem = "Erro ao tentar cadastrar.";
			PCliente pc = new PCliente();
			mensagemParaProgramador = pc.mensagem;
			request.setAttribute("mensagemParaProgramador", mensagemParaProgramador);
			//depois verificar porque essa msg de erro nao está aparecendo.
			//acho que é pq puxa mensagem sem atribuição (pq o erro 'expirou')
		}
		
		request.setAttribute("mensagem", mensagem);
		request.getRequestDispatcher("clienteCadastrar.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
