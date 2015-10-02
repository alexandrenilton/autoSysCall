package br.com.asc.mantemChamado.struts.form;

import java.util.ArrayList;
import java.util.Collection;

import org.apache.struts.action.ActionForm;

import br.com.asc.mantemChamado.dto.ChamadoDTO;
import br.com.asc.mantemChamado.dto.ChamadoDetalhadoDTO;
import br.com.asc.mantemUsuario.dto.UsuarioDTO;
/**
 * Form-Bean para Chamados.
 * Essa classe contém DTO's e atributos que são inseridos e recebidos
 * por reflexão do JSP, por meio das funcionalidades do framework Struts.
 * 
 * @version 1.0
 * @date 30/05/2007
 *
 */
public class ChamadoForm extends ActionForm{
	
	ChamadoDTO chamadoDto;
	UsuarioDTO usuarioDto;
	ChamadoDetalhadoDTO chamadoDetalhadoDto;
	
	Collection categorias;
	Collection classes;
	Collection componentes;
	Collection problemas;
	Collection chamados;
	
	private String status;
	private String acao;
	private String numero;
	private String nome;
	private String ordenacao;
	
	public ChamadoForm() {
		chamadoDto = new ChamadoDTO();
		usuarioDto = new UsuarioDTO();
		chamadoDetalhadoDto = new ChamadoDetalhadoDTO();
		categorias = new ArrayList();
		classes = new ArrayList();
		componentes = new ArrayList();
		problemas = new ArrayList();
		chamados = new ArrayList();
	}

	public ChamadoDTO getChamadoDto() {
		return chamadoDto;
	}

	public void setChamadoDto(ChamadoDTO chamadoDto) {
		this.chamadoDto = chamadoDto;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String chamado) {
		this.status = chamado;
	}

	public String getAcao() {
		return acao;
	}

	public void setAcao(String acao) {
		this.acao = acao;
	}

	public UsuarioDTO getUsuarioDto() {
		return usuarioDto;
	}

	public void setUsuarioDto(UsuarioDTO usuarioDto) {
		this.usuarioDto = usuarioDto;
	}

	public Collection getCategorias() {
		return categorias;
	}

	public void setCategorias(Collection categorias) {
		this.categorias = categorias;
	}

	public Collection getClasses() {
		return classes;
	}

	public void setClasses(Collection classes) {
		this.classes = classes;
	}

	public Collection getComponentes() {
		return componentes;
	}

	public void setComponentes(Collection componentes) {
		this.componentes = componentes;
	}

	public Collection getProblemas() {
		return problemas;
	}

	public void setProblemas(Collection problemas) {
		this.problemas = problemas;
	}

	public Collection getChamados() {
		return chamados;
	}

	public void setChamados(Collection chamados) {
		this.chamados = chamados;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String empresa) {
		this.nome = empresa;
	}

	public String getOrdenacao() {
		return ordenacao;
	}

	public void setOrdenacao(String ordenacao) {
		this.ordenacao = ordenacao;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public ChamadoDetalhadoDTO getChamadoDetalhadoDto() {
		return chamadoDetalhadoDto;
	}

	public void setChamadoDetalhadoDto(ChamadoDetalhadoDTO chamadoDetalhadoDto) {
		this.chamadoDetalhadoDto = chamadoDetalhadoDto;
	}
	
	
}
