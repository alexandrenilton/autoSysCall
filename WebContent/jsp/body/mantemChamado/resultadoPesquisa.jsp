<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>

<script type="text/javascript" language="JavaScript" src="/js/asc.js"></script>

<script>

  function principal(){
  		document.location.href="./mantemChamado.do?acao=show" ;	
  }

</script>


<!-- INCLUDE FORMULÁRIO  -->
<html:form action="/mantemChamado" method="post">
<input type="hidden" name="acao" value="detalharChamado"  />

	<table width="95%" align="center">
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Resultado Consulta Chamados</font></legend>
			<table align="center" width="100%">
				<tr>
					<td>
						<br><br>
					</td>
				</tr>
				<tr>
					<td><font color="#336699" size="2"><b>Obs: clique no número do chamado para detalhar...</b></font></td>
				</tr>
				<tr>
					<td>
						<br><br>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table class="alerts2" width="100%" border="1">
							<tr bgcolor="#336699">
								<td class="labelForm" align="center">
									<font color="#FFFFFF">No Chamado</font>
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">Nome</font>
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">Status</font>
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">Data de Abertura</font>
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">Técnico</font>
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">Súmario</font>
								</td>
							</tr>
							<% int indice = 0; %>
							<logic:iterate property="chamados" id="chamado" name="chamadoForm">
							<% if(indice%2 == 0){ %>
							<tr bgcolor="#EFEFEF" >
							<% } else { %>
							<tr bgcolor="#F9F9F9" >
							<% } %>
								<td class="labelForm">
									<font size="1" />
									<a target="_blank" href="mantemChamado.do?acao=pesquisarChamado&numero=<bean:write name="chamado" property="numero" />">
									<bean:write name="chamado" property="numero" />
									</a>
									</font>
								</td>
								<td class="labelForm" align="left">
									<font size="1" />
									<bean:write name="chamado" property="nome" />
									</font>
								</td>
								<td class="labelForm">
									<font size="1" />
									<bean:write name="chamado" property="status" />
									</font>
								</td>
								<td class="labelForm">
									<font size="1" />
									<bean:write name="chamado" property="dataAbertura" />
									</font>
								</td>
								<td class="labelForm">
									<font size="1" />
									<bean:write name="chamado" property="tecnico" />
									</font>
								</td>
								<td class="labelForm" align="left">
									<font size="1" />
									<bean:write name="chamado" property="sumarioIncidente" />
									</font>
								</td>
							</tr>
							<% indice++; %>
							</logic:iterate>
							
							
						</table>
					</td>
				</tr>
				<tr>
					<td class="labelForm" colspan="2" align="center">
						<br>
						<input type="button" class="btn" value="Voltar" onClick="JavaScript:principal()">
					</td>
				</tr>
				<tr>
					<td>
						<br><br>
					</td>
				</tr>
			</table>
			</fieldset>		
		</td>
	</tr>
</table>
</html:form>

<!-- FIM INCLUDE FORMULÁRIO  -->
