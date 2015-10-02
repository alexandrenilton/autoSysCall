package br.com.asc.mantemUsuario.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import br.com.asc.comum.dao.BaseDAO;
import br.com.asc.comum.dao.Conecta;
import br.com.asc.mantemUsuario.dao.IMantemUsuarioDAO;
import br.com.asc.mantemUsuario.dto.EmpresaDTO;
import br.com.asc.mantemUsuario.dto.PerfilDTO;
import br.com.asc.mantemUsuario.dto.UsuarioDTO;

/**
 * Classe responsável pela persistência de dados dos
 * usuários do sistema.
 * @author Alexandre Belem and Vanderlei Barbosa
 * @date 05/05/2007
 * @version 1.0
 */

public class MantemUsuarioDAO extends BaseDAO implements IMantemUsuarioDAO {

	private Conecta connect;
	private UsuarioDTO _dto = null;
	
	
	/**
	 * Método responsável por efetuar o cancelamento de um usuário 
	 * na base de dados
	 * @author Alexandre Belem
	 * @parm usuarios[]
	 * @return String
	 * @throws SQLException
	 */
	public boolean cancelaUsuarioDao(String userId) 
		throws SQLException{
		
		boolean retorno = false;
		
		connect = new Conecta();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sb = new StringBuffer();
		
		sb.append("UPDATE PESSOAS SET PESS_STATUS='N' " );
		sb.append(" WHERE  PESS_ID = '"+userId+"' ");
		
		if ( stmt.executeUpdate(sb.toString()) > 0 ){
			retorno = true;
		}else{
			retorno = false;
		}
		closeAll(null, null, stmt);
		
		return retorno;
	}
	
	/**
	 * Método responsável por efetuar a exclusão de um usuário 
	 * na base de dados
	 * @author Alexandre Belem
	 * @parm usuarios[]
	 * @return String
	 * @throws SQLException
	 */
	public boolean excluiUsuarioDao(String userId) 
		throws SQLException{
	
		boolean retorno = false;
		
		connect = new Conecta();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sb = new StringBuffer();
		
		sb.append("DELETE PESSOAS " );
		sb.append(" WHERE  PESS_ID = '"+userId+"' ");
		
		
		if ( stmt.executeUpdate(sb.toString()) > 0 ){
			retorno = true;
		}else{
			retorno = false;
		}
		closeAll(null, null, stmt);
		
		return retorno;
	}
		
	/**
	 * Método responsável por efetuar o cadastro de usuários na base de dados
	 * @author Alexandre Belem
	 * @parm usuarios[]
	 * @return String
	 * @throws SQLException
	 */
	public UsuarioDTO cadastraUsuarioDao(UsuarioDTO usuarioDto)
		throws SQLException {
		
		connect = new Conecta();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sbCadastra = new StringBuffer();
		
		sbCadastra.append(" INSERT  INTO PESSOAS VALUES( '"+usuarioDto.getUserId()+"' ,");
		sbCadastra.append(" "+usuarioDto.getPerfil()+" ,");
		sbCadastra.append("  "+usuarioDto.getEmpresa()+", ");
		sbCadastra.append(" '"+usuarioDto.getRg()+"', ");		
		sbCadastra.append(" '"+usuarioDto.getCpf()+"', ");
		sbCadastra.append(" '"+usuarioDto.getGerente()+"', ");
		sbCadastra.append("  to_date('"+usuarioDto.getDataInicio()+"', 'DD/MM/YYYY') , ");
		sbCadastra.append("  to_date('"+usuarioDto.getDataFim()+"', 'DD/MM/YYYY') , ");
		sbCadastra.append(" '"+usuarioDto.getTelefoneComercial()+"', ");
		sbCadastra.append(" '"+usuarioDto.getTelefoneCelular()+"', ");
		sbCadastra.append(" '"+usuarioDto.getEnd()+"', ");
		sbCadastra.append(" '"+usuarioDto.getEmail()+"', ");
		sbCadastra.append(" '"+usuarioDto.getNome()+"', ");
		sbCadastra.append(" '"+usuarioDto.getCidade()+"', ");
		sbCadastra.append(" '"+usuarioDto.getUf()+"', ");
		sbCadastra.append(" '"+usuarioDto.getSenhaCript()+"' , ");
		sbCadastra.append("  'A'  ) ");
		
		
		/*2 Fase, adiconar possibilidade de cancelamento*/
		//sbCadastra.append(" '"+usuarioDto.getStatus()+"' )"  );
	
		if ( stmt.executeUpdate(sbCadastra.toString()) == 1){
			closeAll(null, null, stmt);
			return usuarioDto;
		}else{
			closeAll(null, null, stmt);
			return null;
		}
	}
	
	
	/**
	 * Método responsável por efetuar a atualização dos dados de um
	 * determinado usuário no banco de dados 
	 * @author Alexandre Belem
	 * @parm usuarios[]
	 * @return String
	 * @throws SQLException
	 */
	public boolean atualizaUsuarioDao(UsuarioDTO usuarioDto) 
		throws SQLException {
		
		connect = new Conecta();
		
		boolean retorno = false;
		
		Statement statement = connect.getConnection().createStatement();
		
		StringBuffer sbAtualiza = new StringBuffer();
		
		sbAtualiza.append("UPDATE PESSOAS SET PESS_NOME = '"+usuarioDto.getNome()+"' , ");
		sbAtualiza.append(           "PESS_RG   = '"+usuarioDto.getRg()+"' , ");
		sbAtualiza.append(           "PESS_CPF = '"+usuarioDto.getCpf()+"' , ");
		sbAtualiza.append(       "PESS_EMPR_CODIGO = "+usuarioDto.getEmpresa()+" , ");
		sbAtualiza.append(           "PESS_GERENTE = '"+usuarioDto.getGerente()+"' , ");
		sbAtualiza.append("PESS_TELEFONE_COMERCIAL = '"+usuarioDto.getTelefoneComercial()+"' , ");
		sbAtualiza.append("PESS_TELEFONE_CELULAR = '"+usuarioDto.getTelefoneCelular()+"' , ");
		sbAtualiza.append(           "PESS_END = '"+usuarioDto.getEnd()+"' , ");
		sbAtualiza.append(           "PESS_EMAIL = '"+usuarioDto.getEmail()+"' , ");
		sbAtualiza.append(           "PESS_CIDADE = '"+usuarioDto.getCidade()+"' , ");
		sbAtualiza.append(           "PESS_UF = '"+usuarioDto.getUf()+"'  , ");
		sbAtualiza.append(           "PESS_PERF_CODIGO = "+usuarioDto.getPerfil()+" , ");
		sbAtualiza.append(           "PESS_SENHA = '"+usuarioDto.getSenhaCript()+"', ");
		sbAtualiza.append(           "PESS_STATUS = '"+usuarioDto.getStatus()+"' ");
		sbAtualiza.append(         "WHERE   PESS_ID = '"+usuarioDto.getUserId()+"' ");
		
		if ( statement.executeUpdate(sbAtualiza.toString()) > 0 ){
			retorno = true;
		}else{
			retorno = false;
		}
		
		/*Fecha as conexoes com o banco de dados*/
		closeAll(null, null, statement);
		
		return retorno;
	}
	
	
	/**
	 * Método responsável pela consulta de um usuário na base de dados
	 * @author Alexandre Belem
	 * @parm usuarios[]
	 * @return String
	 * @throws SQLException
	 */
	public UsuarioDTO consultaUsuarioDao(String userId) 
		throws SQLException {
		
		connect = new Conecta();

		StringBuffer sbConsulta = new StringBuffer();

		Statement stmt =  connect.getConnection().createStatement();

		sbConsulta.append(" SELECT PESS_ID, PESS_NOME, PESS_CPF, PESS_EMAIL,  ");
		sbConsulta.append("        PERF_NOME, PESS_RG, EMPR_NOME,  PESS_END, ");
		sbConsulta.append("        PESS_TELEFONE_CELULAR, PESS_TELEFONE_COMERCIAL, PESS_GERENTE, PESS_DATAINICIO, ");
		sbConsulta.append("        PESS_UF, PESS_CIDADE, PESS_STATUS ");
		sbConsulta.append(" FROM   PESSOAS, PERFIL, EMPRESAS     ");
		sbConsulta.append(" WHERE  PESS_PERF_CODIGO = PERF_CODIGO ");
		sbConsulta.append("  AND   PESS_EMPR_CODIGO = EMPR_CODIGO ");
		sbConsulta.append("  AND   PESS_ID    = '"+userId+"'" );
		
		ResultSet rs = stmt.executeQuery(sbConsulta.toString());
		
		while ( rs.next() ){
			_dto = new UsuarioDTO();
			_dto.setUserId(rs.getString("PESS_ID"));
			_dto.setNome(rs.getString("PESS_NOME"));
			_dto.setCpf(rs.getString("PESS_CPF"));
			_dto.setEmail(rs.getString("PESS_EMAIL"));
			_dto.setPerfil(rs.getString("PERF_NOME"));
			_dto.setRg(rs.getString("PESS_RG"));
			_dto.setEmpresa(rs.getString("EMPR_NOME"));
			_dto.setEnd(rs.getString("PESS_END"));
			_dto.setTelefoneCelular(rs.getString("PESS_TELEFONE_CELULAR"));
			_dto.setTelefoneComercial(rs.getString("PESS_TELEFONE_COMERCIAL"));
			_dto.setGerente(rs.getString("PESS_GERENTE"));
			_dto.setDataInicio(rs.getString("PESS_DATAINICIO"));
			_dto.setUf(rs.getString("PESS_UF"));
			_dto.setCidade(rs.getString("PESS_CIDADE"));
			_dto.setStatus(rs.getString("PESS_STATUS"));
		}
		
		rs.close();
		stmt.close();
		
		if ( _dto != null) {
			closeAll(rs, null, stmt);
			return _dto;
		}
		closeAll(rs, null, stmt);
		return null;
	}
	
	
	/**
	 * Método responsável por efetuar a consulta das empresas, para preenchimento 
	 * do Form (JSP)
	 * @author Alexandre Belem
	 * @parm usuarios[]
	 * @return String
	 * @throws SQLException
	 */
	public Collection consultaEmpresasDao() throws SQLException {
		Collection listaEmpresa = new ArrayList();
		
		connect = new Conecta();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sb = new StringBuffer();
		
		sb.append("SELECT EMPR_CODIGO, EMPR_NOME");
		sb.append(" FROM  EMPRESAS ");
		sb.append(" ORDER BY EMPR_NOME ");
		
		ResultSet rs = stmt.executeQuery(sb.toString());
		
		while ( rs.next() ){
			EmpresaDTO dtozinho = new EmpresaDTO();
			dtozinho.setCodigo(rs.getString("EMPR_CODIGO"));
			dtozinho.setNome(rs.getString("EMPR_NOME"));
			listaEmpresa.add(dtozinho);
		}
		closeAll(rs, null, stmt);
		if ( listaEmpresa.isEmpty() ){
			return null;
		}else{
			return listaEmpresa;
		}
	}

	/**
	 * Método responsável por efetuar a consulta dos perfis, para preenchimento 
	 * do Form (JSP)
	 * @author Alexandre Belem
	 * @parm usuarios[]
	 * @return String
	 * @throws SQLException
	 */
	public Collection consultaPerfisDao() throws SQLException {
		Collection listaPerfis = new ArrayList();
		
		connect = new Conecta();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sb = new StringBuffer();
		
		sb.append(" select perf_codigo, perf_nome ");
		sb.append("  from  perfil  ");
		sb.append("  ORDER BY PERF_NOME ");
		
		ResultSet rs = stmt.executeQuery(sb.toString());
		
		while ( rs.next() ){
			PerfilDTO dtozinho = new PerfilDTO();
			dtozinho.setCodigo(rs.getString("PERF_CODIGO"));
			dtozinho.setNome(rs.getString("PERF_NOME"));
			listaPerfis.add(dtozinho);
		}
		closeAll(rs, null, stmt);
		if ( listaPerfis.isEmpty())
			return null;
			
		return listaPerfis;

	}

	
	/**
	 * Método responsável por efetuar a consulta de vários usuários 
	 * na base de dados
	 * base de dados
	 * @author Alexandre Belem
	 * @parm usuarios[]
	 * @return String
	 * @throws SQLException
	 */
	public Collection consultarVariosUsuariosDao(UsuarioDTO usuarioDto) throws SQLException {
		connect  = new Conecta();
		
		Collection listaUsuarios = new ArrayList();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sb = new StringBuffer();
		
		/*Join entre tabelas*/
		sb.append(" select pess_id, pess_cpf, pess_rg, pess_nome, perf_nome, empr_nome ");
		sb.append(" from   pessoas, empresas, perfil ");
		sb.append(" where  pess_perf_codigo = perf_codigo ");
		sb.append(" and    pess_empr_codigo = empr_codigo ");
		
		if ( usuarioDto.getNome() != null){
			sb.append(" and    pess_nome like '%"+usuarioDto.getNome()+"%' ");
		}else {
			sb.append(" and    pess_nome like '%' ");
		}
		
		if ( usuarioDto.getEmpresa().equals("todas")){
			sb.append(" and    empr_nome like '%' ");
		}else{
			sb.append(" and    empr_nome like '%"+usuarioDto.getEmpresa()+"%' ");
		}
		
		if ( usuarioDto.getGerente() != null ){	
			sb.append(" and    pess_gerente like '%"+usuarioDto.getGerente()+"%' ");
		}else{
			sb.append(" and    pess_gerente like '%' ");
		}
        
		ResultSet rs = stmt.executeQuery(sb.toString());
        
        while ( rs.next()){
        	UsuarioDTO dto = new UsuarioDTO();
        	dto.setUserId(rs.getString("PESS_ID"));
        	dto.setCpf(rs.getString("PESS_CPF"));
        	dto.setRg(rs.getString("PESS_RG"));
        	dto.setNome(rs.getString("PESS_NOME"));
        	dto.setPerfil(rs.getString("PERF_NOME"));
        	dto.setEmpresa(rs.getString("EMPR_NOME"));
        	listaUsuarios.add(dto);
        }
		
        closeAll(rs, null, stmt);
		
        if ( !listaUsuarios.isEmpty() ){
			return listaUsuarios;
		}else{
			return null;
		}
	}
	
	/**
	 * Método responsável por efetuar o cancelamento de varios usuários na
	 * base de dados
	 * @author Vanderlei Barbosa
	 * @parm usuarios[]
	 * @return String
	 * @throws SQLException
	 */
	public boolean cancelaVariosUsuairosDao(String usuarios[]) 
		throws SQLException {
		
		connect = new Conecta();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sb = new StringBuffer();
		
		if ( usuarios.length > 0 ){
			String users = "";
			
			users = getCodeSql(usuarios);
			sb.append(" UPDATE PESSOAS SET PESS_STATUS = 'N' ");
			sb.append("  WHERE PESS_ID IN "+users);
			
			
		
		}
		
		
		
		
		return false;
	}
	/**
	 * Método responsável por efetuar a exclusão de varios usuários na
	 * base de dados
	 * @author Alexandre Belem
	 * @parm usuarios[]
	 * @return String
	 * @throws SQLException
	 */
	public boolean excluirVariosUsuariosDao(String usuarios[]) 
		throws SQLException {
		
		
		return false;
	}
	
	
	/**
	 * Método responsável por construir as clausuras where de um comando SQL. Basicamente ele retorna 
	 * um conjunto de dados literais entres parentesis e aspas simples
	 * Ex: usuarios[]=("user1", "user2") --> Retornará ( 'user1', 'user2').
	 * @author Alexandre Belem
	 * @param usuarios
	 * @return String
	 */
	public String getCodeSql(String[] usuarios){
		String string = "";
		
		StringBuffer sb = new StringBuffer();
		int qtd = usuarios.length;
		qtd--;
		
		if ( usuarios.length > 0){
			boolean inicio = false;
			boolean fim = false;
			for ( int a = 0; a < usuarios.length ; a++){
				/*INICIO*/
				if ( a == 0 ){
					sb.append( " ( " );
					inicio = false;
				}
				
				/*ULTIMO*/
				if ( a == qtd ){
					sb.append( "'"+usuarios[a]+"' ) ");
					fim = true;
				}
				/*MEIO*/
				if ( !inicio && !fim)
					sb.append(" '"+usuarios[a]+"', ");
			}
		}
		return sb.toString();
	}
}