<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>

<script>

var arrayCampos = new Array("user","password");

function validarForm(form){
	return validarCampos(form, arrayCampos);
}

</script>


<!-- INCLUDE FORMULÁRIO  -->
<html:form action="/login" onsubmit="return validarForm(this)" method="post">
	<input type="hidden" name="acao" value="buscar" />
	<table width="50%" align="center">
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">AutoSysCall - Login</font></legend>
			<table align="center">
				<tr>
					<td>
						<br><br>
					</td>
				</tr>
				<tr>
					<td nowrap class="style1"  align="right">
						<b>*Usuário:</b> 	
					</td>
					<td>
						<input type="text" size="10" maxlenght="10" name="user" class="objFormText" title="Usuário" >
					</td>
				</tr>
				<tr>
					<td align="right" nowrap class="style1">
						<b>*Senha:</b> 	
					</td>
					<td>
						<input type="password" size="10" maxlenght="10" class="objFormText" title="Password"  name="password">
					</td>
				</tr>
				<tr>
					<td>
						<br>
					</td>
				</tr>
				<tr>
					<td class="labelForm" colspan="2" align="center">
						<br>
						<input type="submit" class="btn" value=" Logar ">  <input type="reset" class="btn" value=" Limpar ">
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
