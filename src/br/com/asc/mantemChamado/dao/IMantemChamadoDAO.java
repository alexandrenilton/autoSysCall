package br.com.asc.mantemChamado.dao;

import java.sql.SQLException;
import java.util.Collection;

import br.com.asc.mantemChamado.dto.ChamadoDTO;
import br.com.asc.mantemChamado.dto.ChamadoDetalhadoDTO;

public interface IMantemChamadoDAO {
	
	public ChamadoDetalhadoDTO consultaChamadoDao(String numero) throws SQLException;
	
	public Collection consultaChamadosDao(ChamadoDTO dto) throws SQLException;
	
	public Collection consultaCategoriasDao() throws SQLException;

	public Collection consultaClassesDao() throws SQLException;

	public Collection consultaComponentesDao() throws SQLException;

	public Collection consultaProblemasDao() throws SQLException;

	public ChamadoDTO cadastraChamadoDao(ChamadoDTO dto) throws SQLException;
	
	public Collection consultaChamadosDao() throws SQLException;

	public Collection pesquisaChamadosDao(ChamadoDTO dto) throws SQLException;
}
