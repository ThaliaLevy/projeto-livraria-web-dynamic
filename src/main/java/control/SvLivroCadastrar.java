package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.entidade.Livro;

@WebServlet("/SvLivroCadastrar")
public class SvLivroCadastrar extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nomeLivro = request.getParameter("nomeLivro");
		String autor = request.getParameter("autor");
		int numeroPaginas = Integer.parseInt(request.getParameter("numeroPaginas"));
		String editora = request.getParameter("editora");
		int preco = Integer.parseInt(request.getParameter("preco"));
		String mensagemErro;

		Livro l = new Livro(nomeLivro, autor, numeroPaginas, editora, preco);
		if (l.guardarDados() == true) {
			request.getRequestDispatcher("telaSucesso.jsp").forward(request, response);
		} else {
			mensagemErro = l.mensagemErro;
			request.setAttribute("mensagemErro", mensagemErro);
			request.getRequestDispatcher("telaErro.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
