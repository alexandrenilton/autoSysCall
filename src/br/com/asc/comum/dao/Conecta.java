package br.com.asc.comum.dao;

/**
 * Classe responsavel por efetuar conexão com o banco de dados.
 * Obs: Essa classe foi consultada da internet.
 * @author Alexandre Belem
 * 
 */
import java.sql.*;



public class Conecta {
	private static final String driver = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:ORCL";
	private static final String USER = "AUTOSYSCALL";
	private static final String PASSWORD = "auto123call";
    
    private Connection conexao;
   
    /**
     * Esse metodo retorna um Connection
     * @return
     */
    public Connection getConnection() {
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(URL, USER, PASSWORD);
           return conexao;
            
        }catch (Exception e) {
            return null;
        }
    }    
}