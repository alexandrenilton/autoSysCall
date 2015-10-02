package br.com.asc.mantemUsuario.struts.action;

import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import br.com.asc.comum.util.Constantes;
import br.com.asc.mantemUsuario.dto.UsuarioDTO;
import br.com.asc.mantemUsuario.facade.MantemUsuarioFacade;
import br.com.asc.mantemUsuario.struts.form.UsuarioForm;

/**
 * @author: Alexandre Belem
 * Classe Action para Caso de Uso Mantem USuario
 */
public class MantemUsuarioAction extends Action{
	
	UsuarioDTO usuarioDto = new UsuarioDTO();
	private MantemUsuarioFacade usuarioFacade;
	
	/**
	 * Método execute da classe Action.
	 * Essa classe extende a classe Action do Framework Struts.
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
				HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		usuarioFacade = new MantemUsuarioFacade();
		
		String acao = request.getParameter("acao");
		String retorno = null;
		
		UsuarioDTO usuarioDto = null;
		
		Constantes constantes = new Constantes();
	
		UsuarioForm usuarioForm = (UsuarioForm) form; 	

		if ( acao.equalsIgnoreCase("parametrosConsultarUsuario")){
			
			return mapping.findForward("exibeParametrosConsultarUsuario");
		
		}else if ( acao.equalsIgnoreCase("parametrosCadastrarUsuario")){
			
			Collection empresas = new ArrayList();
			Collection perfis = new ArrayList();
			
			empresas = usuarioFacade.consultaEmpresasFacade();
			perfis = usuarioFacade.consultaPerfisFacade();
		
			usuarioForm.setEmpresas(empresas);
			usuarioForm.setPerfis(perfis);
			
			return mapping.findForward("exibeParametrosCadastrarUsuario");
		
		}else if ( acao.equalsIgnoreCase("parametrosExcluirUsuario")){
		
			return mapping.findForward("exibeParametrosExcluirUsuario");
		
		}else if ( acao.equalsIgnoreCase("parametrosCancelarUsuario")){
		
			return mapping.findForward("exibeParametrosCancelarUsuario");
		
		}else if ( acao.equalsIgnoreCase("parametrosConsultarVariosUsuarios")){
			
			Collection empresas = new ArrayList();
			
			empresas = usuarioFacade.consultaEmpresasFacade();
			
			usuarioForm.setEmpresas(empresas);
			
			return mapping.findForward("exibeParametrosConsultaVariosUsuarios");
		
		}else if( acao.equalsIgnoreCase("consultarUsuario")){
			Collection empresas = new ArrayList();
			Collection perfis = new ArrayList();
			
			empresas = usuarioFacade.consultaEmpresasFacade();
			perfis = usuarioFacade.consultaPerfisFacade();
			
			String userId = usuarioForm.getUsuarioDto().getUserId();
			
			usuarioDto = usuarioFacade.consultaUsuarioFacade( userId );
			
			usuarioForm.setEmpresas(empresas);
			usuarioForm.setPerfis(perfis);
			
			if ( usuarioDto != null){
				usuarioForm.setUsuarioDto(usuarioDto);
				retorno = "resultadoConsultarUsuario";
			}else{
				retorno = "falha";
			}
		
			return mapping.findForward(retorno);
		}else if ( acao.equalsIgnoreCase("consultarVariosUsuarios")){
			usuarioDto = usuarioForm.getUsuarioDto();
			
			Collection usuarios = usuarioFacade.consultaVariosUsuarios( usuarioDto );
			if ( usuarios == null){
				return mapping.findForward("falha");
			}
			
			if ( usuarios.isEmpty() ){
				usuarioForm.setUsuarios(null);
				return null;
			}else{
				usuarioForm.setUsuarios(usuarios);
				return mapping.findForward("exibeListaUsuarios");
			}
			
			
			
		}else if ( acao.equalsIgnoreCase("atualizarUsuario")){
			String user = usuarioForm.getUser();
			
			if ( usuarioForm != null ){
				usuarioDto = usuarioForm.getUsuarioDto();
				usuarioDto.setUserId(user);
				
				boolean update = usuarioFacade.atualizaUsuarioFacade(usuarioDto);
				if ( update){
					retorno = "atualizadoComSucesso";
				}else{
					retorno = "erroAtualizacao";
				}
			}
		}else if( acao.equalsIgnoreCase("cancelarUsuario")){
			String userId = usuarioForm.getUsuarioDto().getUserId();
			
			if ( usuarioFacade.cancelaUsuarioFacade(userId)){
				retorno = "sucessoCancelamento" ;
			}else{
				retorno =  "erroCancelamento" ;
			}
			
			return mapping.findForward(retorno);
		
		}else if( acao.equalsIgnoreCase("excluirUsuario")){
			String userId = usuarioForm.getUsuarioDto().getUserId();
			
			if ( usuarioFacade.excluiUsuarioFacade(userId)){
				retorno = "sucessoExclusao" ;
			}else{
				retorno =  "erroExclusao" ;
			}
			
			return mapping.findForward(retorno);
			
		}else if ( acao.equalsIgnoreCase("cadastrarUsuario")){
			UsuarioDTO usuario = new UsuarioDTO();


			usuario = usuarioForm.getUsuarioDto();
			usuarioDto = usuarioFacade.cadastraUsuarioFacade(usuario);
			
			
			if ( usuarioDto != null){
				usuarioForm.setUsuarioDto(usuarioDto);
				
				HttpSession Session = request.getSession();
				Session.setAttribute("USERID", usuarioDto.getUserId());
				retorno = "sucessoCadastroUsuario";
			}else{
				retorno = "erroCadastroUsuario"; 
			}
			
		}else if ( acao.equalsIgnoreCase("excluirUsuarios")){
			
			//boolean result = usuarioFacade.excluiUsuariosFacade(usuarioForm.getUserId());
			
			//if ( result ){
				
			//}else{
				
			//}
		}else if ( acao.equalsIgnoreCase("cancelarUsuarios")){
			
		}
		
		return mapping.findForward(retorno);
	}
	
	public void setDto(){
	}
}
