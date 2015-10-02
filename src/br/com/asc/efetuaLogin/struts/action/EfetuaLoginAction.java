package br.com.asc.efetuaLogin.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import br.com.asc.comum.util.Constantes;
import br.com.asc.efetuaLogin.dto.LoginDTO;
import br.com.asc.efetuaLogin.facade.EfetuaLoginFacade;
import br.com.asc.efetuaLogin.struts.form.EfetuaLoginForm;


public class EfetuaLoginAction extends Action{


	LoginDTO loginDto = new LoginDTO();

	public String passCript = null;
	
	EfetuaLoginFacade loginFacade = new EfetuaLoginFacade();
	
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, 
			HttpServletRequest request, HttpServletResponse response) 
	throws Exception {

		String acao = request.getParameter("acao");

		Constantes constantes = new Constantes();

		LoginDTO login = new LoginDTO();
		
		EfetuaLoginForm loginForm = (EfetuaLoginForm) form; 	


		if ( acao.equalsIgnoreCase(constantes.SHOW)){
			return mapping.findForward("exibeParametros");
		
		}else if( acao.equalsIgnoreCase(constantes.BUSCAR)){
		
			if ( loginForm != null){
				setLoginDto(loginForm);
				
				login = loginFacade.efetuaLoginFacade(loginDto);
				
				if ( login != null){
					HttpSession Session = request.getSession();
					Session.setAttribute("NOME", login.getName());
					Session.setAttribute("TR", login.getUser());
					Session.setAttribute("PERFIL", login.getPerfil());
					if ( login.getPerfil().equalsIgnoreCase(Constantes.ATENDENTE)){
						return mapping.findForward("sucessoLoginAtendente");
					}else{
						return mapping.findForward("sucesso");
					}

				}else{
					return mapping.findForward("falha");
				}
			}else{
				return mapping.findForward("falha");
			}
		}
		return mapping.findForward("falha");
	}

	public void setLoginDto( EfetuaLoginForm loginForm){
		loginDto.setUser(loginForm.getUser());
		loginDto.setPassword(loginForm.getPassword());
	}
}
