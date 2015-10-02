package br.com.asc.mantemChamado.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import br.com.asc.comum.dao.BaseDAO;
import br.com.asc.comum.dao.Conecta;
import br.com.asc.mantemChamado.dao.IMantemChamadoDAO;
import br.com.asc.mantemChamado.dto.CategoriaDTO;
import br.com.asc.mantemChamado.dto.ChamadoDTO;
import br.com.asc.mantemChamado.dto.ChamadoDetalhadoDTO;
import br.com.asc.mantemChamado.dto.ClasseDTO;
import br.com.asc.mantemChamado.dto.ComponenteDTO;
import br.com.asc.mantemChamado.dto.ProblemaDTO;
import br.com.asc.mantemUsuario.dto.UsuarioDTO;
/**
 * Classe responsável por efetuar a persistência de dados
 * dos chamados no banco de dados.
 * @author Alexandre Belem and Vanderlei Barbosa
 * @version 1.0
 *
 */
public class MantemChamadoDAO extends BaseDAO implements IMantemChamadoDAO{
	
	private Conecta connect;
	
	/**
	 * Método responsável por efetuar a persistência de chamados
	 * na base de dados.
	 * 
	 * @param chamadoDto
	 * @return ChamadoDTO
	 * @throws SQLException
	 */
	public ChamadoDTO cadastraChamadoDao(ChamadoDTO dto)
		throws SQLException{
		
		connect = new Conecta();
		
		String tecnicoDisponivel = "Nenhum";
		
		int numeroChamado = 0;
		boolean possui = false;
		Statement stmt = connect.getConnection().createStatement();
		StringBuffer str = new StringBuffer();
		String  SQLgetSequencial = "select CHAM_NUMERO "+
                                        " from   chamados "+
                                        " where  rownum = 1  "+
                                        " order by CHAM_NUMERO DESC ";
		ResultSet rsProximo = stmt.executeQuery(SQLgetSequencial);
		
		
		
		if ( rsProximo.next() ){
			possui = true;
			numeroChamado = rsProximo.getInt("CHAM_NUMERO");
		}
	
		
		if ( possui ){
			numeroChamado++;
		}else{
			numeroChamado = 1;
		}
		
		StringBuffer buscaTecnico = new StringBuffer();
		
		buscaTecnico.append (" select pess_id ");
		buscaTecnico.append (" from   pessoas ");
		buscaTecnico.append (" where  pess_perf_codigo = 4 ");
		buscaTecnico.append ("  and    pess_id not in ( Select pess_id ");
		buscaTecnico.append ("                          from  pessoas, chamados ");
		buscaTecnico.append ("                          where pess_id = cham_pess_id ");
		buscaTecnico.append ("                          and   pess_perf_codigo = 4  ");
		buscaTecnico.append("                           and   cham_status like  'Em Execução')");
		buscaTecnico.append (" and rownum = 1 ");
		
		
		ResultSet rsBuscaTecnicoDisponivel = stmt.executeQuery(buscaTecnico.toString());
		
		while ( rsBuscaTecnicoDisponivel.next() ){
			tecnicoDisponivel = rsBuscaTecnicoDisponivel.getString("PESS_ID");
		}
		
		rsProximo.close();
		rsBuscaTecnicoDisponivel.close();
		
		
		dto.setTecnico(tecnicoDisponivel);
		dto.setNumero(numeroChamado);
		
		StringBuffer insert = new StringBuffer();
		
		insert.append(" INSERT INTO CHAMADOS VALUES ( ");
		insert.append(" "+numeroChamado+" ,");
		insert.append(" "+dto.getNumeroDePatrimonio()+", ");
		insert.append(" '"+dto.getUserId()+"', ");
		insert.append(" "+dto.getProblema()+" , ");
		insert.append(" 'Em Aberto' , ");
		//insert.append(" to_date('"+dto.getDataAbertura()+"', 'DD/MM/YYYY') , ");
		insert.append("  sysdate, ");
		insert.append(" "+dto.getTempoAtendimento()+" , ");
		insert.append(" '"+dto.getDetalhamento()+"' , ");
		insert.append(" '"+dto.getSumarioIncidente()+"' , ");
		insert.append(" '' , " );
		insert.append(" '' ,");
		insert.append(" '"+dto.getTecnico()+"' ,");
		insert.append(" "+dto.getClasse()+" ,");
		insert.append(" "+dto.getCategoria()+" , ");
		insert.append(" "+dto.getComponente()+" ");
		insert.append(" ) ");
		
		if ( stmt.executeUpdate(insert.toString()) == 1){
			closeAll(null, null, stmt);
			return dto;
		}else{
			closeAll(null, null, stmt);
			return null;
		}
	}
	
	
	/**
	 * Método responsável por efetuar a consulta de categorias
	 * na base de dados.
	 * 
	 * @param 
	 * @return Collecction
	 * @throws SQLException
	 */
	public Collection consultaCategoriasDao() throws SQLException {
		Collection listaCategorias = new ArrayList();
		
		connect = new Conecta();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sb = new StringBuffer();
		
		sb.append(" select DISTINCT CATE_CODIGO, CATE_NOME, CATE_DESCRICAO   " );
        sb.append(" from   categorias  " );
        
        ResultSet rs = stmt.executeQuery(sb.toString());
        
        while ( rs.next() ){
        	CategoriaDTO dto = new CategoriaDTO();
        	String categoria = rs.getString("CATE_NOME");
        	dto.setNome(categoria);
        	String codigo = rs.getString("CATE_CODIGO");
        	dto.setCodigo(codigo);
        	dto.setDescricao(rs.getString("CATE_DESCRICAO"));
        	listaCategorias.add(dto);
        }
        closeAll(rs, null, stmt);
        return listaCategorias;
	}


	/**
	 * Método responsável por efetuar a consulta de classes
	 * na base de dados.
	 * 
	 * @param 
	 * @return Collecction
	 * @throws SQLException
	 */
	public Collection consultaClassesDao() throws SQLException {
		Collection listaClasses = new ArrayList();
		
		connect = new Conecta();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sb = new StringBuffer();
		
		sb.append(" select distinct clas_codigo, clas_tempo, clas_descricao, clas_nome   " );
        sb.append(" from   classes  " );
        sb.append(" order by clas_nome ");
        
        
        ResultSet rs = stmt.executeQuery(sb.toString());
        
        while ( rs.next() ){
        	ClasseDTO dto = new ClasseDTO();
        	dto.setCodigo(rs.getString("CLAS_CODIGO"));
        	dto.setTempo(rs.getString("CLAS_TEMPO") );
        	dto.setNome(rs.getString("CLAS_NOME") );
        	dto.setDescricao(rs.getString("CLAS_DESCRICAO"));
        	listaClasses.add(dto);
        }
        closeAll(rs, null, stmt);
        return listaClasses;
       
	}

	
	/**
	 * Método responsável por efetuar a consulta de chamados
	 * na base de dados.
	 * 
	 * @param 
	 * @return Collecction
	 * @throws SQLException
	 */
	public Collection consultaChamadosDao() throws SQLException{
		Collection listaChamados = new ArrayList();
		
		connect = new Conecta();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sb = new StringBuffer();
		
		sb.append("  select CHAM_NUMERO, PESS_ID||' - '||PESS_NOME as nome,  ");
		sb.append("        CHAM_STATUS, to_char(cham_data_abertura, 'DD/MM/YYYY HH24:MI:SS') as CHAM_DATA_ABERTURA, CHAM_TECNICO_ID ");
		sb.append("  from   CHAMADOS, PESSOAS ");
		sb.append("  where  cham_pess_id = pess_id " ); 
		sb.append(" order by cham_data_abertura  desc");
		
		ResultSet rs = stmt.executeQuery(sb.toString());
		
		while ( rs.next() ){
			ChamadoDTO dto = new ChamadoDTO();
			dto.setNumero(rs.getInt("CHAM_NUMERO"));
			dto.setUserId(rs.getString("NOME") );
			dto.setStatus(rs.getString("CHAM_STATUS"));
			dto.setDataAbertura(rs.getString("CHAM_DATA_ABERTURA"));
			dto.setTecnico(rs.getString("CHAM_TECNICO_ID"));
			listaChamados.add(dto);
		}
		closeAll(rs, null, stmt);
		return listaChamados;
	}

	/**
	 * Método responsável por efetuar a consulta de componentes na base de dados
	 * 
	 * @param 
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaComponentesDao() throws SQLException {
		Collection listaComponentes = new ArrayList();
		
		connect = new Conecta();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sb = new StringBuffer();
		
		sb.append(" select distinct comp_codigo, comp_tempo, comp_descricao, comp_nome   " );
        sb.append(" from   componentes  " );
        sb.append(" order by comp_nome ");
        
        
        ResultSet rs = stmt.executeQuery(sb.toString());
        
        while ( rs.next() ){
        	ComponenteDTO dto = new ComponenteDTO();
        	dto.setCodigo(rs.getString("COMP_CODIGO"));
        	dto.setTempo(rs.getString("COMP_TEMPO") );
        	dto.setNome(rs.getString("COMP_NOME") );
        	dto.setDescricao(rs.getString("COMP_DESCRICAO"));
        	listaComponentes.add(dto);
        }
        closeAll(rs, null, stmt);
        return listaComponentes;

	}

	
	/**
	 * Método responsável por efetuar a consulta de problemas na base de dados.
	 * 
	 * @param 
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaProblemasDao() throws SQLException {
		Collection listaProblemas = new ArrayList();
		
		connect = new Conecta();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer sb = new StringBuffer();
		
		sb.append(" select distinct prob_codigo, prob_tempo, prob_descricao, prob_nome   " );
        sb.append(" from   problemas  " );
        sb.append(" order by prob_nome ");
        
        
        ResultSet rs = stmt.executeQuery(sb.toString());
        
        while ( rs.next() ){
        	ProblemaDTO dto = new ProblemaDTO();
        	dto.setCodigo(rs.getString("PROB_CODIGO"));
        	dto.setTempo(rs.getString("PROB_TEMPO") );
        	dto.setNome(rs.getString("PROB_NOME") );
        	dto.setDescricao(rs.getString("PROB_DESCRICAO"));
        	listaProblemas.add(dto);
        }
        
        closeAll(rs, null, stmt);
        return listaProblemas;
	}

	/**
	 * Método responsável por efetuar a consulta de chamado na base de dados
	 * 
	 * @param String numero
	 * @return ChamadoDetalhadoDTO
	 * @throws SQLException
	 */
	public ChamadoDetalhadoDTO consultaChamadoDao(String numero) throws SQLException {
		connect = new Conecta();
		
		ChamadoDetalhadoDTO chamadoDetalhadoDto = new ChamadoDetalhadoDTO();
		
		UsuarioDTO usuarioDto = new UsuarioDTO();
		
		ChamadoDTO chamadoDto = new ChamadoDTO();
		
		Statement stmt = connect.getConnection().createStatement();
		
		StringBuffer stringBuffer = new StringBuffer();
		/*Obviamente esse select deve ser mudado de acordo com a quantidade
		 * de dados. Um Dba Especialista deverá criar indices de forma
		 * a melhorar a perfomance do banco... Fase 3 em diante*/
		stringBuffer.append(" select " );
		stringBuffer.append("   pess_id, pess_nome, pess_cpf, pess_rg, pess_telefone_comercial, "); 
		stringBuffer.append("   pess_telefone_celular, empr_nome, pess_gerente, ");
		stringBuffer.append("   perf_nome, cate_nome, clas_nome, comp_nome, ");
		stringBuffer.append("   prob_nome, cham_sumario, cham_detalhamento, cham_descricao_solucao, ");
		stringBuffer.append("   einf_numero_patrimonio, cham_status, cham_registro_de_trabalho  ");
		stringBuffer.append(" from  chamados, pessoas, empresas, perfil, ");
		stringBuffer.append("      problemas, classes, categorias,  " );
		stringBuffer.append("      componentes, equipamentos_informatica ");
		stringBuffer.append(" where cham_pess_id = pess_id ");
		stringBuffer.append("  and pess_empr_codigo = empr_codigo ");
		stringBuffer.append("  and pess_perf_codigo = perf_codigo ");
		stringBuffer.append("  and cham_prob_codigo = prob_codigo ");
		stringBuffer.append("  and cham_clas_codigo = clas_codigo ");
		stringBuffer.append("  and cham_cate_codigo = cate_codigo ");
		stringBuffer.append("  and cham_comp_codigo = comp_codigo ");
		stringBuffer.append("  and cham_einf_numero_patrimonio = einf_numero_patrimonio ");
		stringBuffer.append("  and cham_numero = "+numero); 
		
		ResultSet rs = stmt.executeQuery(stringBuffer.toString());
		
		while ( rs.next() ){
			usuarioDto.setUserId(rs.getString("PESS_ID"));
			usuarioDto.setNome(rs.getString("PESS_NOME"));
			usuarioDto.setCpf(rs.getString("PESS_CPF"));
			usuarioDto.setRg(rs.getString("PESS_RG"));
			usuarioDto.setTelefoneComercial(rs.getString("PESS_TELEFONE_COMERCIAL"));
			usuarioDto.setTelefoneCelular(rs.getString("PESS_TELEFONE_CELULAR"));
			usuarioDto.setEmpresa(rs.getString("EMPR_NOME"));
			usuarioDto.setGerente(rs.getString("PESS_GERENTE"));
			usuarioDto.setPerfil(rs.getString("PERF_NOME"));
			
			chamadoDto.setCategoria(rs.getString("CATE_NOME"));
			chamadoDto.setClasse(rs.getString("CLAS_NOME"));
			chamadoDto.setComponente(rs.getString("COMP_NOME"));
			chamadoDto.setProblema(rs.getString("PROB_NOME"));
			chamadoDto.setSumarioIncidente(rs.getString("CHAM_SUMARIO"));
			chamadoDto.setDetalhamento(rs.getString("CHAM_DETALHAMENTO"));
			chamadoDto.setNumeroDePatrimonio(rs.getString("EINF_NUMERO_PATRIMONIO"));
			chamadoDto.setStatus(rs.getString("CHAM_STATUS"));
			chamadoDto.setRegistroDeTrabalho(rs.getString("CHAM_REGISTRO_DE_TRABALHO"));
			chamadoDto.setDescricaoSolucao(rs.getString("CHAM_DESCRICAO_SOLUCAO"));
		}
		closeAll(rs, null, stmt);
		chamadoDetalhadoDto.setChamadoDto(chamadoDto);
		chamadoDetalhadoDto.setUsuarioDto(usuarioDto);
		return chamadoDetalhadoDto;
	}

	/**
	 * Método responsável por efetuar a consulta de chamados na base de dados.
	 * trazendo somente informações resumidas.
	 * @param 
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaChamadosDao(ChamadoDTO dto) throws SQLException {
		connect = new Conecta();
		
		Collection listaChamados = new ArrayList();
		
		Statement _stmt = connect.getConnection().createStatement();
		
		StringBuffer string = new StringBuffer();
		
		string.append(" SELECT CHAM_NUMERO, CHAM_TECNICO_ID, " );
		string.append(" CHAM_STATUS ");
		string.append(" CHAM_DATA_ABERTURA, CHAM_DATA_ENTREGA " );
		string.append(" ORDER BY CHAM_DATA_ABERTURA ");
		
		
		ResultSet rs = _stmt.executeQuery(string.toString());
		
		while ( rs.next() ){
			ChamadoDTO chamadoDto = new ChamadoDTO();
			chamadoDto.setNumero(rs.getInt("CHAM_NUMERO"));
			chamadoDto.setTecnico(rs.getString("CHAM_TECNICO_ID"));
			chamadoDto.setStatus(rs.getString("CHAM_STATUS"));
			listaChamados.add(dto);
		}
		closeAll(rs, null, _stmt);
		return null;
	}

	/**
	 * Método responsável por efetuar a pesquisa de chamados na base de dados, 
	 * utilizando como critérios de pesquisa os dados digitados no Form JSP.
	 * 
	 * @param ChamadoDTO
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection pesquisaChamadosDao(ChamadoDTO dto) throws SQLException {
		connect  = new Conecta();
		Statement stmt = connect.getConnection().createStatement();
		
		Collection listaChamados = new ArrayList();
		
		StringBuffer consulta = new StringBuffer();
		
		consulta.append(" SELECT   cham_numero, pess_id || ' - ' || pess_nome AS nome, cham_status, ");
		consulta.append(" to_char(cham_data_abertura, 'DD/MM/YYYY HH24:MI:SS') as CHAM_DATA_ABERTURA, ");
	    consulta.append("   cham_tecnico_id, ");
	    consulta.append("   substr(cham_sumario, 1, 25) as sumario");
	    consulta.append(" FROM chamados, pessoas ");
	    consulta.append(" WHERE cham_pess_id = pess_id "); 
	    
	    if ( dto.getNumero() > 0  ){
	    	consulta.append(" AND cham_numero = "+dto.getNumero()+" ");
	    }
	    
	    if ( dto.getUserId() != null && !dto.getUserId().equals("")){
	    	consulta.append(" AND CHAM_PESS_ID like '"+dto.getUserId()+"' ");
	    }
	    
	    if ( dto.getNome() != null && !dto.getNome().equals("")) {
	    	consulta.append( "AND PESS_NOME like '%"+dto.getNome()+"%' " );
	    }
	    
	    if ( !dto.getStatus().equalsIgnoreCase(("todos")) ){
	    	consulta.append( " AND CHAM_STATUS LIKE '%"+dto.getStatus()+"%' ");
	    }
	    
	    if ( dto.getDataInicial() != null && !dto.getDataInicial().equals("") ){
	    	if ( dto.getDataFinal() != null && !dto.getDataFinal().equals("") ){
	    		consulta.append( " AND CHAM_DATA_ABERTURA " );
	    		consulta.append(                  " between to_date('"+dto.getDataInicial()+"' , 'DD/MM/YYYY' ) " );
	    		consulta.append(                      " and to_date('"+dto.getDataFinal()+"' , 'DD/MM/YYYY' )" );
	    	    
	    	}else{
	    	/*Pego da data inicial ate o dia de hoje, isso, somente se não for informado a data Fim!*/
	    		consulta.append( " AND CHAM_DATA_ABERTURA " );
	    		consulta.append(                  " between to_date('"+dto.getDataInicial()+"' , 'DD/MM/YYYY' ) " );
	    		consulta.append(                      " and sysdate " );
	    	}
	    }
	    if ( dto.getOrdenacao() != null ){
	    	if ( dto.getOrdenacao().equals("data")){
	    		consulta.append(" ORDER BY cham_data_abertura DESC");
	    	}else if ( dto.getOrdenacao().equals("numero")){
	    		consulta.append(" ORDER BY cham_numero ASC");
	    	}else if ( dto.getOrdenacao().equals("nome")){
	    		consulta.append(" ORDER BY nome ");
	    	}
	    }
	    
	    ResultSet rs = stmt.executeQuery(consulta.toString());
	    
	    while (rs.next()){
	    	ChamadoDTO dtozinho = new ChamadoDTO();
	    	dtozinho.setNumero(rs.getInt("CHAM_NUMERO"));
	    	dtozinho.setNome(rs.getString("NOME"));
	    	dtozinho.setStatus(rs.getString("CHAM_STATUS"));
	    	dtozinho.setDataAbertura(rs.getString("CHAM_DATA_ABERTURA"));
	    	dtozinho.setTecnico(rs.getString("CHAM_TECNICO_ID"));
	    	dtozinho.setSumarioIncidente(rs.getString("SUMARIO"));
	    	listaChamados.add(dtozinho);
	    }
		
		closeAll(rs, null, stmt);

		return listaChamados;
	}

}
