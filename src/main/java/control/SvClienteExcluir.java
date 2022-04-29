package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.entidade.Cliente;
import model.persistencia.PCliente;

@WebServlet("/SvClienteExcluir")
public class SvClienteExcluir extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cpf = request.getParameter("cpf");
		String mensagem = "Erro ao tentar excluir cadastro.", mensagemParaProgramador;

		Cliente c = new Cliente();

		if (c.excluirPeloCpf(cpf) == true) {
			mensagem = "Excluído com sucesso!";
			String nomeCliente = c.getNomeCliente();

		} else {
			PCliente pc = new PCliente();
			mensagemParaProgramador = pc.mensagem;
			request.setAttribute("mensagemParaProgramador", mensagemParaProgramador);
		}

		//mensagem de erro não está aparecendo quando não há o cpf cadastrado.
		//verificar como resolver isso.
		// https://pt.stackoverflow.com/questions/70247/formas-de-obter-valores-do-banco-com-resultset
		request.setAttribute("mensagem", mensagem);
		request.getRequestDispatcher("cliente.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
