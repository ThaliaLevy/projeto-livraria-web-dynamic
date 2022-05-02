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
		String nome = null;
		
		Cliente c = new Cliente();
		
		Cliente teste = c.excluirPeloCpf(cpf);
		
		//continuar assistindo para ver como ele seta os dados recebidos para o jsp
		//https://www.youtube.com/watch?v=qwoQfd_YzUg&ab_channel=RafaelWendelPinheiro
		
	//	Conexao cn = new Conexao();
		
		/*try {
			
			 primeira tentativa
			 * 
			 * Statement stm = cn.conn.createStatement();
			//cn.ps.setString(1, cpf);

			ResultSet result = stm.executeQuery("SELECT * FROM Cliente");
			
			while(result.next()) {
				nome = result.getString("nome");
			System.out.println(result.getInt("cpf"));
			}
			request.setAttribute("cpf", cpf);
			request.setAttribute("nome", nome);
			stm.close();
			cn.conn.close();
			
			
			// contando tamanho da tabela, numero de colunas, etc
			 * 
			 * Statement stm = cn.conn.createStatement();
			ResultSet result = stm.executeQuery("SELECT * FROM Cliente");
			ResultSetMetaData rsmd = result.getMetaData();
			result.next();
			
			int quantidadeColunas = rsmd.getColumnCount();
			
			for(int i = 1; i <= quantidadeColunas; i++) {
				rsmd.getColumnName(1);
				rsmd.getTableName(1);
				rsmd.getColumnDisplaySize(1);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		*/
		request.setAttribute("nome", teste.getNomeCliente());
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
