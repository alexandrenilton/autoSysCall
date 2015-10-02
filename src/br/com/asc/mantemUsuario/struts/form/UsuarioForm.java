package br.com.asc.mantemUsuario.struts.form;

import java.util.ArrayList;
import java.util.Collection;

import org.apache.struts.action.ActionForm;

import br.com.asc.mantemUsuario.dto.UsuarioDTO;



public class UsuarioForm extends ActionForm{
	
	private UsuarioDTO usuarioDto;
	private String status;
	private String user;
	private String userId[];
	
	
	Collection usuarios;
	
	Collection empresas;
	Collection perfis;
	
	
	public UsuarioForm(){
		usuarioDto = new UsuarioDTO();
		empresas = new ArrayList();
		perfis = new ArrayList();
		usuarios = new ArrayList();
	}
	
	public UsuarioDTO getUsuarioDto(){
		return usuarioDto;
	}
	
	public void setUsuarioDto(UsuarioDTO usuarioDto){
		this.usuarioDto = usuarioDto;
	}

	public String getStatus() {
		if ( usuarioDto.getStatus().equals("N") ){
			return "Desabilitado";
		}else{
			return "Ativado";
		}
	}

	public Collection getEmpresas() {
		return empresas;
	}

	public void setEmpresas(Collection empresas) {
		this.empresas = empresas;
	}

	public Collection getPerfis() {
		return perfis;
	}

	public void setPerfis(Collection perfis) {
		this.perfis = perfis;
	}

	public void setStatus(String status) {
		if ( usuarioDto.getStatus().equals("N")){
			this.status = "Desabilitado";
		}else{
			this.status = "Ativo";
		}
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public Collection getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(Collection usuarios) {
		this.usuarios = usuarios;
	}

	public String[] getUserId() {
		return userId;
	}

	public void setUserId(String[] userId) {
		this.userId = userId;
	}
}