<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>
  
<script>  
  function principal(){
  		document.location.href="./mantemChamado.do?acao=show" ;	
  }
</script>

<html:form action="/mantemChamado" onsubmit="return validarForm(this)" method="post">
	<table width="90%" border="0" height="90%">
		<tr>
			<td width="10%">
			</td>
			<td align="left">
				<a href="<%=request.getContextPath()%>/mantemChamado.do?acao=show">
				<img border="0" src="img/mais.jpg" alt="Detalhar Chamado"></a>
			   </a>
			</td>
			<td align="right">
				<a href="<%=request.getContextPath()%>/mantemChamado.do?acao=show">
				<img border="0" src="img/atualizar.gif" alt="Atualizar tabelas de chamados"></a>
			   </a>
			</td>
		</tr>
	</table>
	<table width="90%" align="center" class="alerts2" border="1" frame="border">
		<tr bgcolor="#EFEFEF">
			<td title="Número do Chamado" ><b>No Chamado</b></td>
			<td title="User Id"><b>UserId</b></td>
			<td title="Status do Chamado"><b>Status</b></td>
			<td title="Data de Abertura"><b>Data Abertura</b></td>
			<td title="Técnico Responsável"><b>Técnico</b></td>
		</tr>
		
		<% int indice = 0; %>
		
		<logic:iterate property="chamados" id="id" name="chamadoForm">
		
		<% if(indice%2 == 0){ %>
		<tr bgcolor="#F9F9F9" >
		<% } else { %>
		<tr bgcolor="#EFEFEF" >
		<% } %> 
			<td align="center" class="labelForm">
				
				<a target="_blank" border="0" href="mantemChamado.do?acao=pesquisarChamado&numero=<bean:write name="id" property="numero" />">
				<bean:write name="id" property="numero" />
				</a>
			</td>
			
			
			<td class="labelForm" align="left">
				<font size="1" />
				<bean:write name="id" property="userId" />
				</font>
			</td>
		
			<td class="labelForm">
				<font size="1" />
				<bean:write name="id" property="status" />
				</font>
			</td>
		
			<td class="labelForm">
				<font size="1" />
				<bean:write name="id" property="dataAbertura" />
				</font>
			</td>
		
			<td class="labelForm">
				<font size="1" />
				<bean:write name="id" property="tecnico" />
				<font size="1" />
			</td>
		</tr>
		<% indice++; %>
		</logic:iterate>
		
	</table>
	
	<table align="center" border="0" width="90%">
		<tr>
			<br><br><br>
		</tr>
		<tr>
			<td align="left">
				<input type="button" class="btn" value="Atualizar Tabela" onClick="JavaScript:principal();"/>
			</td>
			<td align="right">
				<input type="button" class="btn" value="Detalhar Chamado" />
			</td>
		</tr>
	</table>
	
</html:form>
