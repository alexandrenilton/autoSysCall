package br.com.asc.efetuaLogin.dao;

import java.sql.SQLException;

import br.com.asc.efetuaLogin.dto.LoginDTO;
/**
 * Interface para DAO EfetuaLogin
 * @author Alexandre.Belem
 */


public interface IEfetuaLoginDAO{	
	
	
	public LoginDTO efetuaLoginDAO(LoginDTO login) 
		throws SQLException;
}
