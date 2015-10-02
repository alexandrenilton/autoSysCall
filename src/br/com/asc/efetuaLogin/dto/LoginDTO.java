package br.com.asc.efetuaLogin.dto;
/**
 * Classe DTO para Login com seus gets and sets
 * @author Alexandre Nilton
 * @version 1.0
 */
public class LoginDTO {
	private String user;
	private String password;
	private String passCript;
	private String name;
	private String perfil;
	
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassCript() {
		return passCript;
	}
	public void setPassCript(String passCript) {
		this.passCript = passCript;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPerfil() {
		return perfil;
	}
	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}
	
}
