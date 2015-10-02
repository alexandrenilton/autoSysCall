package br.com.asc.comum.dao;


import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 * Essa classe tem como finalidade concentrar códigos reutilizáveis para 
 * as diversas classes da camada de persitência DAO.
 * 
 * @author Alexandre Belem
 * @version 1.0
 * @date 17/04/2007
 *
 */
public class BaseDAO {
	
	private Connection connection = null;
	
	/**
	 * Método responsável por fechar todos os objetos usados na camada de persistência da DAO.
	 * 
	 * @param _resultSet
	 * @param _prepared
	 * @param _statement
	 * @throws SQLException
	 */
	protected void closeAll(ResultSet _resultSet, PreparedStatement _prepared, Statement 
			_statement) throws SQLException {
		
		if(isNotNull(_resultSet)){
			_resultSet.close();
			_resultSet = null;
		}
		if(isNotNull(_prepared)){
			_prepared.close();
			_prepared = null;
		}
		if(isNotNull(_statement)){
			_statement.close();
			_statement = null;
		}
		if(isNotNull(this.connection)){
			this.connection.close();
			this.connection = null;
		}
	}
	


	private boolean isNotNull(Object obj) {
		return obj != null;
	}
	
	/**
	 * Recebe um objeto do tipo hava.util.Date e retorna um 
	 * objeto do tipo java.sql.Date
	 * 
	 * @param _data java.util.Date
	 * @return Date
	 */
	protected Date getDate(java.util.Date _data) {
        if (_data != null) {
            long mili = _data.getTime();
            return new Date(mili);
        }
        return null;
    }
}	
