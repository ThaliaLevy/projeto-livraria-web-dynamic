package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.entidade.Cliente;

@WebServlet("/SvClienteCadastrar")
public class SvClienteCadastrar extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nomeCliente = request.getParameter("nomeCliente");
		int idade = Integer.parseInt(request.getParameter("idade"));
		String sexo = request.getParameter("sexo");
		String senha = request.getParameter("senha");
		int cpf = Integer.parseInt(request.getParameter("cpf"));
		String mensagemErro;

		Cliente c = new Cliente(nomeCliente, idade, sexo, senha, cpf);
		if (c.guardarDados() == false) {
			mensagemErro = c.mensagemErro;
			request.setAttribute("mensagemErro", mensagemErro);
		}
		request.getRequestDispatcher("cliente.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
