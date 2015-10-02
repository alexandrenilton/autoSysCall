package br.com.asc.efetuaLogin.negocio;

import java.sql.SQLException;

import br.com.asc.comum.util.GeradorHash;
import br.com.asc.efetuaLogin.dao.IEfetuaLoginDAO;
import br.com.asc.efetuaLogin.dao.impl.EfetuaLoginDAO;
import br.com.asc.efetuaLogin.dto.LoginDTO;

public class EfetuaLoginNegocio {
	
    private IEfetuaLoginDAO efetuaLoginDao;
	
	private String passCript;
	public EfetuaLoginNegocio(){
		efetuaLoginDao = new EfetuaLoginDAO();
	}
	/**
	 * Método de negocio responsavel por efetuaLogin do usuário no sistema.
	 * Esse método efetua criptografia da senha,
	 * para a mesma ser trabalha no banco de dados.
	 * @param loginDto
	 * @return
	 * @throws SQLException
	 */
	public LoginDTO efetuaLoginNegocio(LoginDTO loginDto)
		throws SQLException{
		
		LoginDTO login = new LoginDTO();
		
		passCript = getPassCript( loginDto.getPassword() );
		if ( !passCript.equals("")){
			loginDto.setPassCript(passCript);
		
		}else{
		/**Erro ao tentar criptografar senha*/
			return null;
		}
		
		login = efetuaLoginDao.efetuaLoginDAO(loginDto);
		
		if ( login != null ){
			login.setPerfil(login.getPerfil().toLowerCase());
			return login;
		}else{
			return null;
		}
	}
	/**
	 * Método de negocio que faz chamado ao metodo em outro pacote,
	 * responsavel por efetuar a criptografia da String password
	 * informada.
	 * @param password
	 * @return
	 */
	public String getPassCript(String password){
		
		String temp;
		
		GeradorHash geradorHash = new GeradorHash();
		
		temp = geradorHash.CriptografarSenha(password);
		
		if ( temp.equals("")){
			return null;
		}else{
			return temp;
		}
	}
}