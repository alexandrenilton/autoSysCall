package br.com.asc.mantemUsuario.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import br.com.asc.comum.util.Constantes;
import br.com.asc.mantemUsuario.dto.UsuarioDTO;
import br.com.asc.mantemUsuario.struts.form.UsuarioForm;

public class CadastrarUsuarioAction extends Action{
	
	UsuarioDTO usuarioDto = new UsuarioDTO();
	
	public ActionForward execute(ActionMapping mapping, ActionForm form,
				HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String acao = request.getParameter("acao");
		String retorno = null;
						
		Constantes constantes = new Constantes();
	
		UsuarioForm usuarioForm = (UsuarioForm) form; 	

		if ( acao.equalsIgnoreCase(constantes.SHOW)){
			return mapping.findForward("exibeParametros");
		}else if( acao.equalsIgnoreCase(constantes.INCLUIR)){
			
		}
		return mapping.findForward("exibeParametros");
	}
}
