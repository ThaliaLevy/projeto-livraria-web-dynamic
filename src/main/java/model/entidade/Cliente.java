package model.entidade;

import model.persistencia.PCliente;

public class Cliente {
	private String nomeCliente, sexo, senha, idade, cpf;
	public String mensagemErro;

	public Cliente() {

	}

	public Cliente(String nomeCliente, String idade, String sexo, String senha, String cpf) {
		this.nomeCliente = nomeCliente;
		this.idade = idade;
		this.sexo = sexo;
		this.senha = senha;
		this.cpf = cpf;
	}

	public boolean guardarDados() {
		PCliente pc = new PCliente();

		if (pc.salvarDados(this) == true) {
			return true;
		} else {
			mensagemErro = pc.mensagemErro;
			return false;
		}
	}

	public boolean verificarDados() {
		PCliente pc = new PCliente();
		if(nomeCliente != null) {
			pc.pesquisarDados(this);
			return true;
		}else{
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

	public String getIdade() {
		return idade;
	}

	public void setIdade(String idade) {
		this.idade = idade;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
}
