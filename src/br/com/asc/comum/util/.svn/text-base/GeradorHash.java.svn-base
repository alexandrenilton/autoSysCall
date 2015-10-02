package br.com.asc.comum.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


/**
 * Classe responsavel por efetuar Cripttografia de Senhas
 * @author Alexandre Belem
 *
 */
public class GeradorHash {

	private static byte chave[] = { 1, 2, 3, 4, 5, 6, 7, 8 };
 
	/**
	 * Método stático principal da Classe, é o corpo da Classe.
	 *
	 * @param senha parâmetro do tipo String.
	 *
	 * @return retorna um objeto do tipo string, que representa o dado criptografado.
	 *
	 */   
	public static String CriptografarSenha(String senha) {

		try { 
			 String strPassword,strResposta = null;

			try {
				strPassword = senha;

				MessageDigest md = MessageDigest.getInstance("MD5");

				md.reset();

				md.update(strPassword.getBytes());

				byte[] digest1 = md.digest();

				StringBuffer encryptedPassword = new StringBuffer();

				for (int i=0; i<digest1.length; i++) {
						encryptedPassword.append(Integer.toHexString(0xFF & digest1[i]));
				}

				strResposta = encryptedPassword.toString(); 

			} catch(NoSuchAlgorithmException nsae) {
	
				strResposta = null;     
	
			} finally {
				return strResposta;
			}
		}catch(Exception e){
			return null;	
		}
	}
}