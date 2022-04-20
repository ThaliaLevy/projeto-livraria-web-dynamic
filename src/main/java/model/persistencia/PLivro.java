package model.persistencia;

import model.entidade.Livro;

public class PLivro {
	public String mensagemErro; 
	public boolean salvarDados(Livro l) {
		
		Conexao cn = new Conexao();
		try {
			cn.sql = "create database if not exists BDLivraria;";
			cn.ps = cn.conn.prepareStatement(cn.sql);
			cn.ps.execute();
			
			cn.sql = "use BDLivraria;";
			cn.ps = cn.conn.prepareStatement(cn.sql);
			cn.ps.execute();
			
			cn.sql = "create table if not exists Livro(id int auto_increment primary key, nomeLivro varchar(30), autor varchar(30), numeroPaginas int, editora varchar(10), preco int);";
			cn.ps = cn.conn.prepareStatement(cn.sql);
			cn.ps.execute();
			
			cn.sql = "insert into Livro(nomeLivro, autor, numeroPaginas, editora, preco) values(?, ?, ?, ?, ?)";
			cn.ps = cn.conn.prepareStatement(cn.sql);
			cn.ps.setString(1, l.getNomeLivro());
			cn.ps.setString(2, l.getAutor());
			cn.ps.setInt(3, l.getNumeroPaginas());
			cn.ps.setString(4, l.getEditora());
			cn.ps.setInt(4, l.getPreco());
			cn.ps.execute();

			cn.conn.close();
			return true;
		} catch (Exception e) {
			mensagemErro = "Erro: " + e;
			return false;
		}
	}

}
