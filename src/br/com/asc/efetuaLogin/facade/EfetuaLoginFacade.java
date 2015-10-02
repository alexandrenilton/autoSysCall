package br.com.asc.efetuaLogin.facade;

import java.sql.SQLException;

import br.com.asc.efetuaLogin.dto.LoginDTO;
import br.com.asc.efetuaLogin.negocio.EfetuaLoginNegocio;


/**
 * Classe responsavel pela chamada dos metodos do caso de uso: EfetuaLogin
 * @author Alexandre Belem and Vanderlei Barbosa
 * @date 05/05/2007
 * @version 1.0
 */
public class EfetuaLoginFacade {

	private static EfetuaLoginFacade loginFacade = null ; 
	
	private EfetuaLoginNegocio loginNegocio;
	
	
	public static EfetuaLoginFacade getInstance(){
		if(loginFacade == null){
			loginFacade = new EfetuaLoginFacade();
		}
		return loginFacade;
	}
	
	public EfetuaLoginFacade(){
		loginNegocio = new EfetuaLoginNegocio();
	}
	/**
	 * Método responsavel por fazer a chamado ao método efetuaLoginNegocio
	 * da classe de négocio.
	 * @param loginDto
	 * @return
	 * @throws SQLException
	 */
	public LoginDTO efetuaLoginFacade(LoginDTO loginDto)
		throws SQLException {
		
		LoginDTO login = new LoginDTO();
		
		login = loginNegocio.efetuaLoginNegocio(loginDto);
		if ( login != null){
			return login;
		}else{
			return null;
		}
	}
}
