package br.com.asc.mantemChamado.dto;

import br.com.asc.mantemUsuario.dto.UsuarioDTO;

/**
 * Classe DTO para dados do chamado detalhado com seus gets and sets.
 * @author Alexandre Belem
 *
 */

public class ChamadoDetalhadoDTO {
	private ChamadoDTO chamadoDto;
	private UsuarioDTO usuarioDto;
	
	public ChamadoDetalhadoDTO (){
		chamadoDto = new ChamadoDTO();
		usuarioDto = new UsuarioDTO();
	}
	
	public ChamadoDTO getChamadoDto() {
		return chamadoDto;
	}
	public void setChamadoDto(ChamadoDTO chamadoDto) {
		this.chamadoDto = chamadoDto;
	}
	public UsuarioDTO getUsuarioDto() {
		return usuarioDto;
	}
	public void setUsuarioDto(UsuarioDTO usuarioDto) {
		this.usuarioDto = usuarioDto;
	}
	
	
}
