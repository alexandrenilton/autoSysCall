package br.com.asc.mantemUsuario.negocio;

import java.sql.SQLException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import br.com.asc.comum.util.GeradorHash;
import br.com.asc.mantemUsuario.dao.IMantemUsuarioDAO;
import br.com.asc.mantemUsuario.dao.impl.MantemUsuarioDAO;
import br.com.asc.mantemUsuario.dto.UsuarioDTO;


/**
 * Classe reponsavel pelo negocio.
 * Essa classe trata dos negocios relacionados ao
 * caso de uso: Mantem Usu�rios
 * @author Alexandre Belem and Vanderlei Barbosa
 * @version 1.0
 * @date 06/05/2007
 */
public class MantemUsuarioNegocio {

	private IMantemUsuarioDAO mantemUsuarioDao ;

	private UsuarioDTO usuario;

	/**
	 * M�todo construtor da classe
	 * @author Alexandre Belem
	 *
	 */
	public MantemUsuarioNegocio() {
		mantemUsuarioDao = new MantemUsuarioDAO();
	}

	
	/**
	 * M�todo de negocio para cancelar usu�rio
	 * @param userId
	 * @return boolean
	 * @throws SQLException
	 */
	public boolean cancelaUsuarioNegocio(String userId)
		throws SQLException{
		
		return mantemUsuarioDao.cancelaUsuarioDao( userId );
	}
	
	/**
	 * M�todo de negocio para excluir usu�rio
	 * @param userId
	 * @return boolean
	 * @throws SQLException
	 */
	public boolean excluiUsuarioNegocio(String userId)
		throws SQLException{
	
		return mantemUsuarioDao.excluiUsuarioDao( userId );
	}
	
	/**
	 * M�todo de negocio para consultar v�rios usu�rios
	 * @param usuarioDto
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultarVariosUsuarios(UsuarioDTO usuarioDto)
		throws SQLException{
		
		return mantemUsuarioDao.consultarVariosUsuariosDao(usuarioDto);
	}
	
	
	/**
	 * M�todo para excluir Varios Usu�rios
	 * 
	 * @param usuarios
	 * @return boolean
	 * @throws SQLException
	 */
	public boolean excluirVariosUsuarios(String usuarios[])
		throws SQLException{
		
		return mantemUsuarioDao.excluirVariosUsuariosDao(usuarios);
	}
	
	/**
	 * M�todo para cancelar Varios Usu�rios
	 * 
	 * @param usuarios
	 * @return boolean
	 * @throws SQLException
	 */
	public boolean cancelaVariosUsuarios(String usuarios[])
		throws SQLException {
		
		return mantemUsuarioDao.cancelaVariosUsuairosDao(usuarios);
	}
	
	
	/**
	 * M�todo respons�vel pelo negocio do cadastramento de usu�rio.
	 * Esse metodo tem como funcionalidade setar os dados iniciais
	 * do usu�rio, verificar se os dados digitados est�o logicamente
	 * corretos e setar senha inicial(que � inicial).
	 * @param usuarioDto
	 * @return UsuarioDTO
	 * @throws SQLException
	 */
	public UsuarioDTO cadastraUsuarioNegocio(UsuarioDTO usuarioDto)
		throws SQLException{
		
		if ( validaDados(usuarioDto) ){
			usuarioDto.setUserId( geraUserId(usuarioDto) );
			usuarioDto.setPerfil(usuarioDto.getPerfil().toUpperCase());
			/*Senha inicial, default para todo mundo*/
			usuarioDto.setSenhaCript("e698545c92888dfa15e1e8177e3fcb");
			usuarioDto.setDataInicio(geraDataAtual());
			usuarioDto.setStatus("A");
			usuarioDto.setDataFim("01/01/2007");
			usuario = mantemUsuarioDao.cadastraUsuarioDao( usuarioDto );
		}
		return usuario;
	}
	/**
	 * M�todo de negocio responsvel por consultar um usu�rio
	 * @param userId
	 * @return Collection
	 * @throws SQLException
	 */
	public UsuarioDTO consultaUsuarioNegocio(String userId) 
		throws SQLException{
		
		usuario = mantemUsuarioDao.consultaUsuarioDao( userId ) ;
		
		if ( usuario != null ){
			return usuario;
		}else{
			return null;
		}
	}
	
	/**
	 * M�todo de negocio responsvel por consultar as empresas cadastradas
	 * na base de dados.
	 * @param userId
	 * @return empresas
	 * @throws SQLException
	 */
	public Collection consultaEmpresasNegocio()
		throws SQLException{
		Collection colecao = new ArrayList();
		
		colecao = mantemUsuarioDao.consultaEmpresasDao();
		
		return colecao;
	}
	/**
	 * M�todo de negocio responsvel por consultar os perfis
	 * na base de dados.
	 * @param userId
	 * @return perfis
	 * @throws SQLException
	 */
	public Collection consultaPerfisNegocio()
		throws SQLException{
		Collection colecao = new ArrayList();
	
		colecao = mantemUsuarioDao.consultaPerfisDao();
	
		return colecao;
	}

	
	/**
	 * M�todo de negocio responsvel por gerar Data Atual do sistema
	 * na base de dados.
	 * @param userId
	 * @return String
	 * @throws SQLException
	 */
	public String geraDataAtual(){
		Date hoje = new Date();
		DateFormat datinha = DateFormat.getDateInstance();
		return datinha.format(hoje).toString();
	}
	
	/**
	 * M�todo de negocio respons�vel por gerar user id do usu�rio.
	 * Esse metodo utiliza do CPF informado para gerar userId.
	 * @param userId
	 * @return String
	 * @throws SQLException
	 */
	public String geraUserId(UsuarioDTO usuarioDto){
		String cpf = usuarioDto.getCpf();
		StringBuffer inicio = new StringBuffer();
		String empresa = usuarioDto.getEmpresa();
		
		if ( empresa.equals("Rural Telecom") ){
			inicio.append("RT");
		}else{
			inicio.append("EX");
		}
		inicio.append(cpf.substring(3,9));
		return inicio.toString();
	}
	
	/**
	 * M�todo de negocio respons�vel por efetuar a valida��o dos dados digitados
	 * @param usuarioDto
	 * @return boolean
	 */
	public boolean validaDados(UsuarioDTO usuarioDto){
		if ( verificaCpf(usuarioDto.getCpf()) ){
			return true;
		}
		return false;
	}
	
	/**
	 * M�todo de negocio respons�vel por efetuar a atualiza��o dos
	 * dados do usu�rio digitados.
	 * Esse m�todo efetua a valida��o que � feita no Cadastro de Usu�rios.
	 * @param usuarioDto
	 * @return boolean
	 */
	public boolean atualizaUsuarioNegocio(UsuarioDTO usuarioDto)
		throws SQLException{
		 if ( verificaCpf(usuarioDto.getCpf())){
			 /*Criptografa senha*/
			 String temp = getPassCript(usuarioDto.getSenha());
			 usuarioDto.setSenhaCript(temp);
			 return mantemUsuarioDao.atualizaUsuarioDao(usuarioDto);
		 }
		 return false;
	}
	
	/**
	 * M�todo de negocio respons�vel por efetuar a criptografia
	 * da senha informada no form.
	 * @param password
	 * @return String
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
	/**
	 * M�todo de negocio respons�vel por efetuar a verifica��o de CPF.
	 * Esse algoritmo foi encontrado na internet.
	 * @param cpf
	 * @return
	 */
	public boolean verificaCpf( String cpf ){
		String s_temp = cpf.replaceAll("\\.|-", "");
		int num[]= new int[11];
		int j=0; 
		int somaP=0;
		int somaU=0; 
		int cont=10; 
		int valido=0; 
		int modP=0; 
		int modU=0; 

		if( s_temp.length() == 11 ) 
		{
			for( int i=0 ; i<=10 ; i++)
				num[i]=Integer.parseInt( s_temp.substring(i,i+1) ); 

			/*1� Digito Verificador*/ 
			for(int i=0;i<=8;i++)
			{somaP+=(num[i]*cont);cont--;}
			modP=somaP%11;
			if(modP<=1) {   
				modP=0;
				if(modP==num[9])
					valido++; 
			}
			if( modP > 1) {  
				modP = 11-modP;
				if(modP==num[9])
					valido++;
			}
			/*2� Digito Verificador*/ 	
			cont=11;
			for(int i=0;i<=8;i++) 
			{somaU+=(num[i]*cont);cont--;}

			modU=(somaU+2*modP)%11;
			if(modU <= 1) {   
				modU = 0;
				if( modU == num[10])
					valido++; 
			}
			if( modU > 1 ) {  
				modU = 11-modU;
				if(modU == num[10])
					valido++;
			}
			if(valido==2){
				return true;
			}else{ 
				return false;
			}
		}
		return false;
	}

}

