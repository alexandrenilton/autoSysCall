package br.com.asc.mantemUsuario.facade;



import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import br.com.asc.mantemUsuario.dto.EmpresaDTO;
import br.com.asc.mantemUsuario.dto.PerfilDTO;
import br.com.asc.mantemUsuario.dto.UsuarioDTO;
import br.com.asc.mantemUsuario.negocio.MantemUsuarioNegocio;

/**
 * Classe Facade, respons�vel por fazer chamadas aos metodos de negocio.
 * Essa classe foi construida de forma abstrata, n�o possui nenhuma regra de negocio.
 * � apenas uma ponte de liga��o entre as Classes Action (Struts) e as classes de n�gocio.
 * Respeitando o modelo MVC.
 * 
 * @author Alexandre Nilton and Vanderlei
 * @date 03/05/2007
 */

public class MantemUsuarioFacade {

	private MantemUsuarioNegocio mantemUsuarioNegocio;
	private static MantemUsuarioFacade mantemUsuarioFacade = null ; 
	
	//private MantemUsuarioNegocio mantemUsuarioNegocio;
	
	/**
	 * 
	 */
	public static MantemUsuarioFacade getInstance(){
		if(mantemUsuarioFacade == null){
			mantemUsuarioFacade = new MantemUsuarioFacade();
		}
		return mantemUsuarioFacade;
	}
	/**
	 * M�todo respons�vel por efetuar chamada do m�todo consultaVariosUsuariosNegocio 
	 * na classe de negocio (MantemUsuarioNegocio)
	 * @param usuarioDto
	 * @return
	 * @throws SQLException
	 * @author Alexandre Belem
	 */
	public Collection consultaVariosUsuarios(UsuarioDTO usuarioDto)
		throws SQLException{
		
		Collection colecaoUsuarios = new ArrayList();
		
		mantemUsuarioNegocio = new MantemUsuarioNegocio();
		
		colecaoUsuarios = mantemUsuarioNegocio.consultarVariosUsuarios(usuarioDto);
		
		return colecaoUsuarios;
		
	}
	
	/**
	 * M�todo respons�vel por efetuar chamada do m�todo excluirVariosUsuariosNegocio 
	 * na classe de negocio (MantemUsuarioNegocio)
	 * @param usuarioDto
	 * @return
	 * @throws SQLException
	 * @author Alexandre Belem
	 */
	public boolean excluirVariosUsuarios(String usuarios[])
		throws SQLException{
		
		mantemUsuarioNegocio = new MantemUsuarioNegocio();
		
		return mantemUsuarioNegocio.excluirVariosUsuarios(usuarios);
	}
	
	
	/**
	 * M�todo respons�vel por efetuar chamada do m�todo cancelarVariosUsuariosNegocio 
	 * na classe de negocio (MantemUsuarioNegocio)
	 * @param usuarioDto
	 * @return
	 * @throws SQLException
	 * @author Vanderlei Barbosa
	 */
	public boolean cancelaVariosUsuarios(String usuarios[])
		throws SQLException{
		
		mantemUsuarioNegocio = new MantemUsuarioNegocio();
		
		return mantemUsuarioNegocio.cancelaVariosUsuarios(usuarios);
	}
	
	/**
	 * M�todo respons�vel por efetuar chamada do m�todo consultaUsuarioNegocio 
	 * na classe de negocio (MantemUsuarioNegocio)
	 * @param usuarioDto
	 * @return
	 * @throws SQLException
	 * @author Vanderlei Barbosa
	 */
	public UsuarioDTO consultaUsuarioFacade(String userId)
		throws SQLException {
		
		mantemUsuarioNegocio = new MantemUsuarioNegocio();
		UsuarioDTO usuario = new UsuarioDTO();
		
		usuario = mantemUsuarioNegocio.consultaUsuarioNegocio( userId );
		
		if ( usuario != null ){
			return usuario;
		}else{
			return null;
		}
	}
	
	/**
	 * M�todo respons�vel por efetuar chamada do m�todo atualizaUsuarioNegocio 
	 * na classe de negocio (MantemUsuarioNegocio)
	 * @param usuarioDto
	 * @return
	 * @throws SQLException
	 * @author Vanderlei Barbosa
	 */
	public boolean atualizaUsuarioFacade(UsuarioDTO usuarioDto)
		throws SQLException{
		boolean retorno = false;
		
		mantemUsuarioNegocio = new MantemUsuarioNegocio();
		retorno =  mantemUsuarioNegocio.atualizaUsuarioNegocio(usuarioDto);
		
		return retorno;
	}
	
	
	/**
	 * M�todo respons�vel por efetuar chamada do m�todo consultaEmpresasNegocio 
	 * na classe de negocio (MantemUsuarioNegocio)
	 * @param usuarioDto
	 * @return
	 * @throws SQLException
	 * @author Vanderlei Barbosa
	 */
	public Collection consultaEmpresasFacade()
		throws SQLException {
		Collection listaEmpresas = new ArrayList();
		
		mantemUsuarioNegocio = new MantemUsuarioNegocio();
		
		listaEmpresas = mantemUsuarioNegocio.consultaEmpresasNegocio();
		
		return listaEmpresas;
		
	}
	
	/**
	 * M�todo respons�vel por efetuar chamada do m�todo consultaPerfisNegocio 
	 * na classe de negocio (MantemUsuarioNegocio)
	 * @param usuarioDto
	 * @return
	 * @throws SQLException
	 * @author Vanderlei Barbosa
	 */
	public Collection consultaPerfisFacade()
		throws SQLException {
		Collection listaPerfis = new ArrayList();
	
		mantemUsuarioNegocio = new MantemUsuarioNegocio();
	
		listaPerfis = mantemUsuarioNegocio.consultaPerfisNegocio();
	
		return listaPerfis;
	}
	
	/**
	 * M�todo respons�vel por efetuar chamada do m�todo cadastraUsuarioNegocio 
	 * na classe de negocio (MantemUsuarioNegocio)
	 * @param usuarioDto
	 * @return
	 * @throws SQLException
	 * @author Vanderlei Barbosa
	 */
	public UsuarioDTO cadastraUsuarioFacade(UsuarioDTO usuarioDto)
		throws SQLException{
		
		
		UsuarioDTO dto = new UsuarioDTO();
		
		mantemUsuarioNegocio = new MantemUsuarioNegocio();
		
		dto = mantemUsuarioNegocio.cadastraUsuarioNegocio(usuarioDto);
		return usuarioDto;
	}
	
	
	/**
	 * M�todo respons�vel por efetuar chamada do m�todo cancelaUsuarioNegocio 
	 * na classe de negocio (MantemUsuarioNegocio)
	 * @param usuarioDto
	 * @return
	 * @throws SQLException
	 * @author Vanderlei Barbosa
	 */
	public boolean cancelaUsuarioFacade(String userId)
		throws SQLException{
		
		boolean retorno = false;
		mantemUsuarioNegocio = new MantemUsuarioNegocio();
		retorno =  mantemUsuarioNegocio.cancelaUsuarioNegocio(userId);
		
		return retorno;
	}
	
	
	/**
	 * M�todo respons�vel por efetuar chamada do m�todo excluirUsuarioNegocio 
	 * na classe de negocio (MantemUsuarioNegocio)
	 * @param usuarioDto
	 * @return
	 * @throws SQLException
	 * @author Vanderlei Barbosa
	 */
	public boolean excluiUsuarioFacade(String userId)
		throws SQLException{
		
		boolean retorno = false;
		
		mantemUsuarioNegocio = new MantemUsuarioNegocio();
		retorno = mantemUsuarioNegocio.excluiUsuarioNegocio(userId);
	
		return retorno;
	}
}
