package br.com.asc.mantemUsuario.dao;

import java.sql.SQLException;
import java.util.Collection;

import br.com.asc.mantemUsuario.dto.UsuarioDTO;

public interface IMantemUsuarioDAO {
	
	public UsuarioDTO consultaUsuarioDao(String userId) 
		throws SQLException;
	
	public boolean atualizaUsuarioDao(UsuarioDTO usuarioDto)
		throws SQLException;
	
	public UsuarioDTO cadastraUsuarioDao(UsuarioDTO usuarioDto)
		throws SQLException;
	
	
	public boolean cancelaUsuarioDao(String userId)
		throws SQLException;
	
	public boolean excluiUsuarioDao(String userId)
		throws SQLException;
	
	public Collection consultaEmpresasDao()
		throws SQLException;
	
	public Collection consultaPerfisDao()
		throws SQLException;

	public Collection consultarVariosUsuariosDao(UsuarioDTO usuarioDto)
		throws SQLException;
	
	public boolean excluirVariosUsuariosDao(String usuarios[])
		throws SQLException;
	
	public boolean cancelaVariosUsuairosDao(String usuarios[])
		throws SQLException;
}
