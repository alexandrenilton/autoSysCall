package br.com.asc.mantemChamado.dto;
/**
 * Classe DTO para classes com seus gets and sets.
 * @author Alexandre Belem
 *
 */
public class ClasseDTO {
	private String descricao;
	private String nome;
	private String tempo;
	private String codigo;
	
	
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTempo() {
		return tempo;
	}
	public void setTempo(String tempo) {
		this.tempo = tempo;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
}
