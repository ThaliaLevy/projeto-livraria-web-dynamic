package model.entidade;

import model.persistencia.PLivro;

public class Livro {

	private String nomeLivro, autor, editora;
	public String mensagemErro;
	private int numeroPaginas, preco;

	public Livro() {

	}

	public Livro(String nomeLivro, String autor, int numeroPaginas, String editora, int preco) {
		this.nomeLivro = nomeLivro;
		this.autor = autor;
		this.numeroPaginas = numeroPaginas;
		this.editora = editora;
		this.preco = preco;
	}
	
	public boolean guardarDados(){
		PLivro pl = new PLivro();
		
		if(pl.salvarDados(this) == true) {
			return true;
		}else {
			mensagemErro = pl.mensagemErro;
			return false;
		}
	}

	public String getNomeLivro() {
		return nomeLivro;
	}

	public void setNomeLivro(String nomeLivro) {
		this.nomeLivro = nomeLivro;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getEditora() {
		return editora;
	}

	public void setEditora(String editora) {
		this.editora = editora;
	}

	public int getNumeroPaginas() {
		return numeroPaginas;
	}

	public void setNumeroPaginas(int numeroPaginas) {
		this.numeroPaginas = numeroPaginas;
	}

	public int getPreco() {
		return preco;
	}

	public void setPreco(int preco) {
		this.preco = preco;
	}
}
