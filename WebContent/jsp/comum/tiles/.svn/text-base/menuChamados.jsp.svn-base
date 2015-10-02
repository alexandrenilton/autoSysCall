<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>
<br>

<script>
  function pesquisarChamados(){
  		document.forms[0].action="<%=request.getContextPath()%>/mantemChamado.do?acao=pesquisar" ;
	   document.forms[0].submit();
  	}
  	
  function abrirChamado(){
  		document.forms[0].action="<%=request.getContextPath()%>/mantemChamado.do?acao=abrir" ;
	   document.forms[0].submit();
  	}
  
  function asc(){
  		document.location.href="./Home.do" ;	
  }
</script>

<form>
<table>
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Opções:</font></legend>
				<table>
					<tr>
						<td align="center" title="Pesquisar Chamados">
							<br>
							<br>
							<a href="<%=request.getContextPath()%>/mantemChamado.do?acao=pesquisar">
								<img border="0" src="img/pesquisaChamado.gif" alt="Pesquisar Chamados"></a>
							</a>
							<br>
							<br>
						</td>
					</tr>
					<tr>
						<td align="center" title="Abrir Chamados">
							<br>
							<br>
							<a href="<%=request.getContextPath()%>/mantemChamado.do?acao=abrir">
								<img border="0" src="img/abrirChamado.gif" alt="Abrir Chamados"></a>
							<br>
							<br>
						</td>
					</tr>
					<tr width="80%">
						<td title="Sair do Sistema">
							<br>
							<br>
							<input type="button" value="Sair do Sistema" class="btn" onClick="JavaScript:asc()" />
							<br>
							<br>
						</td>
					</tr>
				</table>
			</fieldset>
		</td>
	</tr>
</table>
</form>
