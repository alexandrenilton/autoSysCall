package br.com.asc.mantemUsuario.facade;



import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import br.com.asc.mantemUsuario.dto.EmpresaDTO;
import br.com.asc.mantemUsuario.dto.PerfilDTO;
import br.com.asc.mantemUsuario.dto.UsuarioDTO;
import br.com.asc.mantemUsuario.negocio.MantemUsuarioNegocio;

/**
 * Classe Facade, responsável por fazer chamadas aos metodos de negocio.
 * Essa classe foi construida de forma abstrata, não possui nenhuma regra de negocio.
 * É apenas uma ponte de ligação entre as Classes Action (Struts) e as classes de négocio.
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
	 * Método responsável por efetuar chamada do método consultaVariosUsuariosNegocio 
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
	 * Método responsável por efetuar chamada do método excluirVariosUsuariosNegocio 
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
	 * Método responsável por efetuar chamada do método cancelarVariosUsuariosNegocio 
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
	 * Método responsável por efetuar chamada do método consultaUsuarioNegocio 
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
	 * Método responsável por efetuar chamada do método atualizaUsuarioNegocio 
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
	 * Método responsável por efetuar chamada do método consultaEmpresasNegocio 
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
	 * Método responsável por efetuar chamada do método consultaPerfisNegocio 
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
	 * Método responsável por efetuar chamada do método cadastraUsuarioNegocio 
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
	 * Método responsável por efetuar chamada do método cancelaUsuarioNegocio 
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
	 * Método responsável por efetuar chamada do método excluirUsuarioNegocio 
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
