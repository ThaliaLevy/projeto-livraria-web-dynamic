package model.entidade;

import model.persistencia.PCliente;

public class Cliente {
	private String nomeCliente, sexo, senha;
	public String mensagemErro;
	private int idade, cpf;

	public Cliente() {

	}

	public Cliente(String nomeCliente, int idade, String sexo, String senha, int cpf) {
		this.nomeCliente = nomeCliente;
		this.idade = idade;
		this.sexo = sexo;
		this.senha = senha;
		this.cpf = cpf;
	}
	
	public boolean guardarDados(){
		PCliente pc = new PCliente();
		
		if(pc.salvarDados(this) == true) {
			return true;
		}else {
			mensagemErro = pc.mensagemErro;
			return false;
		}
	}

	public String getNomeCliente() {
		return nomeCliente;
	}

	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public int getCpf() {
		return cpf;
	}

	public void setCpf(int cpf) {
		this.cpf = cpf;
	}
}
