package br.com.asc.efetuaLogin.dao.impl;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import br.com.asc.comum.dao.Conecta;
import br.com.asc.efetuaLogin.dao.IEfetuaLoginDAO;
import br.com.asc.efetuaLogin.dto.LoginDTO;


/**
 * Classe responsavel pela persistencia dos dados
 * na base de dados Oracle 10g. Os imports
 * efetuados nessa classe então ligados aos drivers
 * fornecidos pela propria Oracle.
 * 
 * @author Alexandre Nilton
 * @verison 1.0
 * 
 */
public class EfetuaLoginDAO implements IEfetuaLoginDAO {
	private String  user, passCript;
	
	private Conecta connect;
	
	/**
	 * Metodo responsavel por efetuar login do usuário na base de dados.
	 * @param loginDto
	 * @return LoginDTO
	 * @throws SQLException
	 */
	public LoginDTO efetuaLoginDAO(LoginDTO loginDto) 
		throws SQLException {
		user = loginDto.getUser();
        passCript = loginDto.getPassCript();
        
        StringBuffer sbConsulta = new StringBuffer();
        
        String name = null;
        String perfil = null;
        
        connect = new Conecta();
        
        System.out.println("PassWordCript: "+passCript);
        
        try{
             Statement st =  connect.getConnection().createStatement();
             
             sbConsulta.append(" SELECT PESS_NOME,  ");
             sbConsulta.append("        PERF_NOME ");
             sbConsulta.append(" FROM   PESSOAS, PERFIL ");
             sbConsulta.append(" WHERE  PESS_PERF_CODIGO = PERF_CODIGO "); 
             sbConsulta.append(" AND    PESS_ID    = '"+user+"' ");
             sbConsulta.append(" AND    PESS_SENHA = '"+passCript+"' ");
             sbConsulta.append(" AND    PESS_STATUS <> 'N' ");
             
             ResultSet rs = st.executeQuery(sbConsulta.toString());
             while ( rs.next() ){
                name = rs.getString(1);
                perfil = rs.getString(2);
             }
             
        }catch ( SQLException SQLERROR){
            SQLERROR.printStackTrace();
            return null;
        }
        if ( name == null ) {
            return null;
        }else{
            loginDto.setName(name);
            loginDto.setPerfil(perfil);
            return loginDto;
        }
	}
}