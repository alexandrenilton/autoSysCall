<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>

<script type="text/javascript" language="JavaScript" src="/js/asc.js"></script>

<script>


function validarForm(form){
	return validarCampos(form, arrayCampos);
}

	function excluir(){
		document.forms[0].action="<%=request.getContextPath()%>/mantemUsuario.do?acao=excluirUsuarios" ;
		document.forms[0].submit();
	}
    
   function cancelar(){
		document.forms[0].action="<%=request.getContextPath()%>/mantemUsuario.do?acao=cancelarUsuarios" ;
		document.forms[0].submit();
	}

</script>


<!-- INCLUDE FORMULÁRIO  -->
<html:form action="/mantemUsuario" method="post">
	<table width="85%" align="center">
		<tr align="center">
					
					<td class="labelForm" colspan="2" align="center">
						<br>
						<input type="submit" class="btn" value="Cancelar Usuários">  
						<input type="submit" class="btn" value="Excluir Usuários">  
						<input type="reset"  class="btn" value=" Limpar ">
						<br><br>
					</td>
				</tr>
		<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Resultado Consulta Usuários</font></legend>
			<table align="center">
				<tr>
					<td>
						<br><br>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table>
							<tr bgcolor="#336699">
								<td width="100px%" align="center">
									<input class="objFormText" onclick="checkAll(this)" type="checkbox" name="todos" title="Selecionar todas os usuários" />
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">UserId</font>
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">CPF</font>
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">RG</font>
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">Nome</font>
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">Persasfil</font>
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">Empresa</font>
								</td>
							</tr>
							<% int indice = 0; %>
							<logic:iterate property="usuarios" id="user" name="usuarioForm">
							<% if(indice%2 == 0){ %>
							<tr bgcolor="#EFEFEF" >
							<% } else { %>
							<tr bgcolor="#F9F9F9" >
							<% } %>
								<td align="center">
									<input type="checkbox" name="userId" value="<bean:write name="user" property="userId" />" >
								</td>
								<td class="labelForm">
									<bean:write name="user" property="userId" />
								</td>
								<td class="labelForm">
									<bean:write name="user" property="cpf" />
								</td>
								<td class="labelForm">
									<bean:write name="user" property="rg" />
								</td>
								<td class="labelForm">
									<bean:write name="user" property="nome" />
								</td>
								<td class="labelForm">
									<bean:write name="user" property="perfil" />
								</td>
								<td class="labelForm">
									<bean:write name="user" property="empresa" />
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
						<input type="button" class="btn" value="Cancelar Usuários" onClick="JavaScript:excluir()">  
						<input type="button" class="btn" value="Excluir Usuários"  onClick="JavaScript:cancelar()">  
						<input type="reset"  class="btn" value=" Limpar ">
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
