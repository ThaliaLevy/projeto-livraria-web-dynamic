package model.persistencia;

import java.sql.ResultSet;

import model.entidade.Cliente;

public class PCliente {
	public String mensagem;

	public boolean salvarDados(Cliente c) {

		Conexao cn = new Conexao();
		try {
			cn.sql = "create database if not exists BDLivraria;";
			cn.ps = cn.conn.prepareStatement(cn.sql);
			cn.ps.execute();

			cn.sql = "use BDLivraria;";
			cn.ps = cn.conn.prepareStatement(cn.sql);
			cn.ps.execute();

			cn.sql = "create table if not exists Cliente(id int auto_increment primary key, nome varchar(30), idade int, sexo varchar(10), senha varchar(10), cpf int);";
			cn.ps = cn.conn.prepareStatement(cn.sql);
			cn.ps.execute();

			cn.sql = "insert into Cliente(nome, idade, sexo, senha, cpf) values(?, ?, ?, ?, ?)";
			cn.ps = cn.conn.prepareStatement(cn.sql);
			cn.ps.setString(1, c.getNomeCliente());
			cn.ps.setString(2, c.getIdade());
			cn.ps.setString(3, c.getSexo());
			cn.ps.setString(4, c.getSenha());
			cn.ps.setString(5, c.getCpf());
			cn.ps.execute();

			cn.conn.close();
			
			return true;
		} catch (Exception e) {
			mensagem = "Erro: " + e;
			return false;
		}
	}
	
	public Cliente localizarDados(String cpf, String senha) {
		
		Conexao cn = new Conexao();
		try {
			cn.sql = "use BDLivraria;";
			cn.ps = cn.conn.prepareStatement(cn.sql);
			cn.ps.execute();

			cn.sql = "select * from Cliente where cpf = ? and senha = ?;";
			cn.ps = cn.conn.prepareStatement(cn.sql);
			cn.ps.setString(1, cpf);
			cn.ps.setString(2, senha);

			ResultSet result = cn.ps.executeQuery();
			
			Cliente c = new Cliente();
			result.first();
			 c.setCpf(result.getString("cpf"));
			 c.setSenha(result.getString("senha"));
			
			cn.conn.close();
			
			return c;
		} catch (Exception e) {
			mensagem = "Erro: " + e;
			return null;
		}
	}
}
