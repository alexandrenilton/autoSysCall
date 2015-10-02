package br.com.asc.mantemChamado.negocio;

import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Collection;
import java.util.Date;

import br.com.asc.mantemChamado.dao.IMantemChamadoDAO;
import br.com.asc.mantemChamado.dao.impl.MantemChamadoDAO;
import br.com.asc.mantemChamado.dto.ChamadoDTO;
import br.com.asc.mantemChamado.dto.ChamadoDetalhadoDTO;
import br.com.asc.mantemUsuario.dto.UsuarioDTO;
/**
 * Classe responsável pelo negocio do caso de Mantem Chamado.
 * 
 * @version 1.0
 * @date 10/05/2007
 * 
 */
public class MantemChamadoNegocio {

	private IMantemChamadoDAO mantemChamadoDao ;
	
	public MantemChamadoNegocio() {
		mantemChamadoDao = new MantemChamadoDAO();
	}
	
	private UsuarioDTO usuario;
	
	/**
	 * Método de negocio responsavel por efetuar a consulta de chamado
	 * @param chamadoDto
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaChamadosNegocio(ChamadoDTO chamadoDto)
		throws SQLException{
		
		return mantemChamadoDao.consultaChamadosDao(chamadoDto);
	}
	
	/**
	 * Método de negocio responsavel por efetuar a consulta de chamado, 
	 * detalhadamente
	 * 
	 * @param ChamadoDetalhadoDTO
	 * @return Collection
	 * @throws SQLException
	 */
	public ChamadoDetalhadoDTO consultaChamadoNegocio(String numero)
		throws SQLException{
		
		return mantemChamadoDao.consultaChamadoDao(numero);
		
	}
	
	/**
	 * Método de negocio responsavel por efetuar a pesquisa de chamados.
	 * @param chamadoDto
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection pesquisaChamadosNegocio(ChamadoDTO dto) 
		throws SQLException{
		
		return mantemChamadoDao.pesquisaChamadosDao(dto);
	}
	
	
	/**
	 * Método de negocio responsavel por efetuar a consulta de chamados
	 * @param chamadoDto
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaChamadosNegocio()
		throws SQLException{
		
		return mantemChamadoDao.consultaChamadosDao();
	}

	/**
	 * Método de negocio responsavel por efetuar a consulta de categorias
	 * @param chamadoDto
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaCategoriasNegocio() 
		throws SQLException{
		
		return mantemChamadoDao.consultaCategoriasDao();
	}
	
	
	/**
	 * Método de negocio responsavel por efetuar o cadastro de chamados
	 * @param chamadoDto
	 * @return ChamadoDTO
	 * @throws SQLException
	 */
	public ChamadoDTO cadastraChamadoNegocio(ChamadoDTO chamadoDto) 
		throws SQLException{
		
		Date hoje = new Date();
		
		DateFormat datinha = DateFormat.getDateInstance();
		chamadoDto.setDataAbertura(datinha.format(hoje));
		chamadoDto.setTempoAtendimento(10);
		return mantemChamadoDao.cadastraChamadoDao(chamadoDto);
	}
	
	/**
	 * Método de negocio responsável 
	 * @param 
	 * @return Collection
	 * @throws SQLException
	 */
	public Collection consultaClassesNegocio()
		throws SQLException{
	
		return mantemChamadoDao.consultaClassesDao();
	}
	
	public Collection consultaComponentesNegocio()
		throws SQLException{
		
		return mantemChamadoDao.consultaComponentesDao();
	}
	
	public Collection consultaProblemasNegocio()
		throws SQLException{
		
		return mantemChamadoDao.consultaProblemasDao();
	}
}

