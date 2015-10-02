package br.com.asc.mantemChamado.struts.action;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import br.com.asc.comum.util.Constantes;
import br.com.asc.mantemChamado.dto.ChamadoDTO;
import br.com.asc.mantemChamado.dto.ChamadoDetalhadoDTO;
import br.com.asc.mantemChamado.facade.MantemChamadoFacade;
import br.com.asc.mantemChamado.struts.form.ChamadoForm;
import br.com.asc.mantemUsuario.dto.UsuarioDTO;
import br.com.asc.mantemUsuario.facade.MantemUsuarioFacade;

/**
 * Classe action responsável pelo caso de uso MantemChamado.
 * Essa classe é chamada apartir do submit do JSP. É utilizavél
 * somente em ambientes web.
 * @version 1.0
 * @date 01/05/2007
 *
 */
public class MantemChamadoAction extends Action {
	private MantemUsuarioFacade usuarioFacade;
	
	private String retorno = "falha";
	
	private MantemChamadoFacade chamadoFacade;
	
	/**
	 * Método executado no momento que a classe é instanciada.
	 * @param ActionMapping, ActionForm, HttpServletRequest, HttpServletResponse
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
				HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		
		String acao = request.getParameter("acao");
		
		UsuarioDTO usuarioDto = null;
	
		ChamadoForm chamadoForm = (ChamadoForm) form; 	
		
		if ( acao == null){
			acao = chamadoForm.getAcao();
		}
		if ( acao.equals("") ){
			acao = chamadoForm.getAcao();
		}
		
		if ( acao.equalsIgnoreCase(Constantes.SHOW)){
			
			chamadoFacade = new MantemChamadoFacade();
			
			Collection colecaoChamados = chamadoFacade.consultaChamadosFacade();
			
			if ( colecaoChamados != null ){
				chamadoForm.setChamados(colecaoChamados);
			}
			return mapping.findForward("telaInicialChamados");
		}else if ( acao.equalsIgnoreCase(Constantes.PESQUISAR)){
			return mapping.findForward("telaPesquisarChamados");
		}else if ( acao.equalsIgnoreCase(Constantes.ABRIR)){
			return  mapping.findForward("abrirChamados");
		
		}else if ( acao.equalsIgnoreCase("pesquisarChamados")){
			
			ChamadoDTO dto = new ChamadoDTO();
			
			dto = chamadoForm.getChamadoDto();
			
			Collection listaChamado = chamadoFacade.pesquisaChamadosFacade(dto);
			
			if ( listaChamado != null){
				chamadoForm.setChamados(listaChamado);
			}
			
			return mapping.findForward("resultadoPesquisaChamados");
			
		}else if ( acao.equalsIgnoreCase("abrirchamadouser")){
			
			usuarioFacade = new MantemUsuarioFacade();
			chamadoFacade = new MantemChamadoFacade();
			
			String userId = chamadoForm.getChamadoDto().getUserId();
			usuarioDto = usuarioFacade.consultaUsuarioFacade( userId );
			
			Collection colecaoCategorias = chamadoFacade.consultaCategoriasFacade();
			Collection colecaoClasses = chamadoFacade.consultaClassesFacade();
			Collection colecaoComponentes = chamadoFacade.consultaComponentesFacade();
			Collection colecaoProblemas = chamadoFacade.consultaProblemasFacade();
			
			if ( usuarioDto != null && !colecaoCategorias.isEmpty()){
				chamadoForm.setUsuarioDto(usuarioDto);
				chamadoForm.setCategorias(colecaoCategorias);
				chamadoForm.setClasses(colecaoClasses);
				chamadoForm.setComponentes(colecaoComponentes);
				chamadoForm.setProblemas(colecaoProblemas);
				retorno = "mostraAbrirChamado";
			}else{
				retorno = "falha";
			}
			return mapping.findForward(retorno);
		
		}else if ( acao.equalsIgnoreCase("cadastrarChamado") ){
			ChamadoDTO chamadoDto = new ChamadoDTO();
			chamadoDto = chamadoForm.getChamadoDto();
			String user = chamadoForm.getUsuarioDto().getUserId();
			chamadoDto.setUserId(user);
			
			chamadoFacade = new MantemChamadoFacade();
			
			chamadoDto = chamadoFacade.cadastrarChamadoFacade(chamadoDto);
			
			HttpSession session = request.getSession();
			
			if ( chamadoDto != null ){
				chamadoForm.setChamadoDto(chamadoDto);
				session.setAttribute("CHAMADO", String.valueOf(chamadoDto.getNumero()) );
				session.setAttribute("TECNICO", chamadoDto.getTecnico());
				session.setAttribute("TEMPO" , String.valueOf(chamadoDto.getTempoAtendimento()) );
				retorno = "sucessoAberturaChamado";
			}else{
				retorno = "erroAbrirChamado";
			}
			return mapping.findForward(retorno);
		}else if ( acao.equalsIgnoreCase("pesquisarChamado")){
			String numero = chamadoForm.getNumero();
			
			ChamadoDetalhadoDTO dto = new ChamadoDetalhadoDTO();
			
			chamadoFacade = new MantemChamadoFacade();
			
			dto = chamadoFacade.consultaChamadoFacade(numero);
			
			if ( dto != null){
				chamadoForm.setChamadoDetalhadoDto(dto);
			}else{
				chamadoForm.setChamadoDetalhadoDto(null);
			}
			
			return mapping.findForward("mostraChamadoDetalhado");
			
		}
		return null;
	}
}