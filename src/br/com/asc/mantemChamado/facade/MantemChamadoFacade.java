package br.com.asc.mantemChamado.facade;



import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import br.com.asc.mantemChamado.dto.ChamadoDTO;
import br.com.asc.mantemChamado.dto.ChamadoDetalhadoDTO;
import br.com.asc.mantemChamado.negocio.MantemChamadoNegocio;

/**
 * Classe responsável por efetuar a chamada dos métodos da classe de negocio,
 * o objetivo da criação dessa classe é abstrair as funcionalidades para camada 
 * action, ou outra camada considerada de visão. Com isso, não importa como seja
 * construída a parte de visão, se ela utilizar os serviços dessa fachada, não será
 * necessário alterações nessa classe nem as que se encontram abaixo dela.
 * @author Alexandre Belem
 * @version 1.0
 * @date 01/06/2007
 *
 */

public class MantemChamadoFacade {
	
	private MantemChamadoNegocio mantemChamadoNegocio;
	private static MantemChamadoFacade mantemChamadoFacade = null ; 
	
	
	public static MantemChamadoFacade getInstance(){
		if(mantemChamadoFacade == null){
			mantemChamadoFacade = new MantemChamadoFacade();
		}
		return mantemChamadoFacade;
	}
	/**
	 * Método responsável por oferecer o serviço de consulta de chamados
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaChamadosFacade()
		throws SQLException{
		
		mantemChamadoNegocio = new MantemChamadoNegocio();
		
		return mantemChamadoNegocio.consultaChamadosNegocio();
	}
	
	
	/**
	 * Método responsável por oferecer o serviço de pesquisa de chamados
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection pesquisaChamadosFacade(ChamadoDTO dto)
		throws SQLException{
		
		
		mantemChamadoNegocio = new MantemChamadoNegocio();
		
		return mantemChamadoNegocio.pesquisaChamadosNegocio(dto);
		
	}
	
	
	/**
	 * Método responsável por oferecer o serviço de consulta de chamado
	 * @return ChamadoDetalhadoDTO
	 * @throws SQLException
	 */
	public ChamadoDetalhadoDTO consultaChamadoFacade(String numero) 
		throws SQLException{
		
		mantemChamadoNegocio = new MantemChamadoNegocio();
		
		ChamadoDetalhadoDTO dto = mantemChamadoNegocio.consultaChamadoNegocio(numero);
		
		return dto;
	}
	
	/**
	 * Método responsável por oferecer o serviço de abertura de novos chamados
	 * @return ChamadoDTO
	 * @throws SQLException
	 */
	public ChamadoDTO cadastrarChamadoFacade(ChamadoDTO chamadoDto)
		throws SQLException{
		
		mantemChamadoNegocio = new MantemChamadoNegocio();
		
		ChamadoDTO dto = mantemChamadoNegocio.cadastraChamadoNegocio(chamadoDto);
		
		return dto;
	}
	
	/**
	 * Método responsável por oferecer o serviço de consulta de chamados
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaChamadosFacade(ChamadoDTO chamadoDto)
		throws SQLException{
		
		Collection chamados = new ArrayList();
		
		mantemChamadoNegocio = new MantemChamadoNegocio();
		
		chamados = mantemChamadoNegocio.consultaChamadosNegocio(chamadoDto);
		
		if ( chamados.isEmpty() ){
			return null;
		}else{
			return chamados;
		}
	}
	
	
	/**
	 * Método responsável por oferecer o serviço de consulta de categorias
	 * para preenchimento dos combo box da view ( JSP )
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaCategoriasFacade()
		throws SQLException{
		
		Collection colecaoCategorias = new ArrayList();
		
		mantemChamadoNegocio = new MantemChamadoNegocio();
		
		colecaoCategorias = mantemChamadoNegocio.consultaCategoriasNegocio();
		
		return colecaoCategorias;
	}
	
	/**
	 * Método responsável por oferecer o serviço de consulta de classes
	 * para preenchimento dos combo box da view ( JSP )
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaClassesFacade()
		throws SQLException{
	
		Collection colecaoClasses = new ArrayList();
		mantemChamadoNegocio = new MantemChamadoNegocio();
		
		colecaoClasses = mantemChamadoNegocio.consultaClassesNegocio();
		
		return colecaoClasses;
	}
	
	/**
	 * Método responsável por oferecer o serviço de consulta de componentes
	 * para preenchimento dos combo box da view ( JSP )
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaComponentesFacade()
		throws SQLException{
		
		Collection colecaoComponentes = new ArrayList();
		mantemChamadoNegocio = new MantemChamadoNegocio();
		colecaoComponentes = mantemChamadoNegocio.consultaComponentesNegocio();
		return colecaoComponentes;
	}
	
	/**
	 * Método responsável por oferecer o serviço de consulta de problemas
	 * para preenchimento dos combo box da view ( JSP )
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaProblemasFacade()
		throws SQLException{
		Collection colecaoProblemas = new ArrayList();
		mantemChamadoNegocio = new MantemChamadoNegocio();
		colecaoProblemas = mantemChamadoNegocio.consultaProblemasNegocio();
		return colecaoProblemas;
	}
	
	
}
