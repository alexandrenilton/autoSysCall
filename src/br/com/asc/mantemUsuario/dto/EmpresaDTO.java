package br.com.asc.mantemUsuario.dto;
/**
 * Classe DTO para empresas
 * @author Vanderlei Barbosa
 *
 */
public class EmpresaDTO {
	private String nome;
	private String codigo;
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
}
