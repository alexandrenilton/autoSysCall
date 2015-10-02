<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>

<script language="JavaScript">
  
  function asc(){
  		document.location.href="./Home.do" ;	
  }
  
  function editar(){
  	var show = document.getElementById("tbShow");
  	var edit = document.getElementById("tbEdit");  
 
 	show.style.display = "none";
 	edit.style.display = "inline";
 	}
 	

 	  function atualiza(){
  	  	document.forms[0].action="<%=request.getContextPath()%>/mantemUsuario.do?acao=atualizarUsuario&user=<bean:write name="usuarioForm" property="usuarioDto.userId"/>" ;
	   document.forms[0].submit();
  }
</script>

<br>
<table width="100%" border="0" cellspacing="0" cellpadding="3">
<tr>
  <table width="100%" border="0" cellspacing="0" cellpadding="3">
    <td width="100%"><table width="100%"  border="0" cellpadding="0" cellspacing="0">

    <!-- Mostra o nome do formulario na tela -->
    <tr>
        <td><img src="img/brt.tab.left.top.ex.gif" width="10" height="18"></td>
        <td width="100%" background="img/brt.tab.top.middle.ex.gif"><strong><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif"><img src="img/xp.folder.open.gif" width="16" height="14" align="top">&nbsp;Processos Automatizados </font></strong></td>
        <td><img src="img/brt.tab.right.top.ex.gif" width="10" height="18"></td>
    </tr>
    <tr><td height="11"><img src="img/brt.tab.left.top.gif" width="10" height="11"></td>
       	<td height="11" background="img/brt.tab.top.middle.gif"><img src="img/spacer.gif"></td>
       	<td height="11"><img src="img/brt.tab.right.top.gif" width="10" height="11"></td>
    </tr>
    <tr><td background="img/brt.tab.left.middle.gif"><img src="img/spacer.gif"></td>
       	<td><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
             	<tr><td valign="top" height="22" ><table width="100%" border="0" cellpadding="0" cellspacing="10">
            </table>
				</td>
        <td width="100%" height="22" valign="top">
          <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
          <tr><td >
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
             	<tr>
                <td height="22" bgcolor="#73AAD2"><strong><font color="#FFFFFF" size="2" face="Tahoma, Verdana">
                  &nbsp;Gerência de Processos Automatizados...</font></strong></td>
              </tr>
              </table>

<!-- INCLUDE FORMULÁRIO  -->
<table width="50%" align="center" id="tbShow" border="0" cellpadding="0" cellspacing="10" style="display: inline">
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Cadastradar Usuário:</font></legend>
			  <table align="center" border="0" cellspacing="5" >
					<tr>
						<td nowrap class="style1">
								<b>*Nome:</b>
						</td>
						
						<td nowrap class="style1">
								<b>*CPF:</b>
						</td>
						
						<td nowrap class="style1">
								<b>*RG:</b>
						</td>
					</tr>
					<tr>	
						<td nowrap class="style1">
							<bean:write name="usuarioForm" property="usuarioDto.nome" />
						</td>
						<td>
							<bean:write name="usuarioForm" property="usuarioDto.cpf" />
						</td>
						<td colspan="2">
							<bean:write name="usuarioForm" property="usuarioDto.rg"/> 
						</td>
					</tr>
					
					<tr>
						<td  nowrap class="style1">
							<b>*Endereço:</b>
						</td>
						<td nowrap class="style1">
							<b>*Cidade:</b>
						</td>
						<td nowrap class="style1">&nbsp; &nbsp; &nbsp; &nbsp;
							<b>*UF:</b>
						</td>
						<td nowrap class="style1">
							<b>*Telefone Comercial:</b>
						</td>
					</tr>
					
					<tr>	
						<td>
							<bean:write name="usuarioForm" property="usuarioDto.end" />
						</td>
						<td>
							<bean:write name="usuarioForm" property="usuarioDto.cidade" />
						</td>
						<td> &nbsp; &nbsp; &nbsp; &nbsp;
							<bean:write name="usuarioForm" property="usuarioDto.uf" />
						</td>
						<td>
							<bean:write name="usuarioForm" property="usuarioDto.telefoneComercial" />
						</td>
					</tr>
					
					
					<tr>
						<td  nowrap class="style1">
							<b>*Empresa:</b>
						</td>
						<td nowrap class="style1">
							<b>*Gerente(empresa):</b>
						</td>
						<td nowrap class="style1">
							<b>*Telefone Celular:</b>
						</td>
						<td nowrap class="style1">
							<b>*Perfil:</b>
						</td>
					</tr>
					
					<tr>	
						<td>
							<bean:write name="usuarioForm" property="usuarioDto.empresa" />
						</td>
						<td>
							<bean:write name="usuarioForm" property="usuarioDto.gerente" />
						</td>
						<td>
							<bean:write name="usuarioForm" property="usuarioDto.telefoneCelular" />
						</td>
						<td>
							<bean:write name="usuarioForm" property="usuarioDto.perfil" />
						</td>
					</tr>
					
					
					<tr>
						<td  nowrap class="style1">
							<b>*E-mail:</b>
						</td>
						<td  nowrap class="style1">
							<b>*Status do Usuário:</b>
						</td>
					</tr>
					
					<tr>	
						<td>
							<bean:write name="usuarioForm" property="usuarioDto.email" />
						</td>
						<td>
							<bean:write name="usuarioForm" property="status" />
						</td>
					</tr>

					
					<tr>
						<td>
						<br><br>
						</td>
					</tr>
					
					<tr>
						<td colspan="4" align="center">
							<input name="atualizar" type="button" onClick="JavaScript:editar();" value="Atualizar" class="btn" >
							<input type="button" value=" Fechar " class="btn" onclick="window.close()">
						</td>
					</tr>
					
				</table>
			</fieldset>		
		</td>
	</tr>
</table>

<table width="50%" align="center" id="tbEdit" border="0" cellpadding="0" cellspacing="10" style="display: none">
<html:form action="/mantemUsuario">
<html:hidden property="acao" value="atualizarUsuario" name="usuarioForm" /> 
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Usuário Cadastrado:</font></legend>
			
			<bean:define id="user" property="usuarioDto.userId" name="usuarioForm" />
			
			<table align="center">
				<tr>
						<td nowrap class="style1">
								<b>*Nome:</b>
						</td>
						
						<td nowrap class="style1">
								<b>*CPF:</b>
						</td>
						
						<td nowrap class="style1">
								<b>*RG:</b>
						</td>
					</tr>
					
					<tr>	
						<td nowrap class="style1">
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.nome" title="Nome" size="40" />
						</td>
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.cpf" title="CPF" size="25" />
						</td>
						<td colspan="2">
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.rg" title="RG" size="27" />
						</td>
					</tr>
					
					<tr>
						<td  nowrap class="style1">
							<b>*Endereço:</b>
						</td>
						<td nowrap class="style1">
							<b>*Cidade:</b>
						</td>
						<td nowrap class="style1">&nbsp; &nbsp; &nbsp; &nbsp;
							<b>*UF:</b>
						</td>
						<td nowrap class="style1">
							<b>*Telefone Comercial:</b>
						</td>
					</tr>
					
					<tr>	
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.end" title="Endereço Trabalho" size="40" />
						</td>
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.cidade" title="Cidade" size="25" />
						</td>
						<td> &nbsp; &nbsp; &nbsp; &nbsp;
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.uf" title="UF" size="2" />
						</td>
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.telefoneComercial" title="Telefone Comercial" size="15" />
						</td>
					</tr>
					
					
					<tr>
						<td  nowrap class="style1">
							<b>*Empresa:</b>
						</td>
						<td nowrap class="style1">
							<b>*Gerente(empresa):</b>
						</td>
						<td nowrap class="style1">
							<b>*Telefone Celular:</b>
						</td>
						<td nowrap class="style1">
							<b>*Perfil:</b>
						</td>
					</tr>
					
					<tr>	
						<td>
							<html:select name="usuarioForm" property="usuarioDto.empresa" styleClass="objFormText"> 
								<bean:define id="empresa" property="empresas" name="usuarioForm" />
								<html:options collection="empresa" property="codigo" labelProperty="nome"/> 
							</html:select> 
						</td>
						
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.gerente" title="Gerente" size="25" />
						</td>
						
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.telefoneCelular" title="Telefone Celular" size="15" />
						</td>
						
						<td>
							<html:select name="usuarioForm" property="usuarioDto.perfil" styleClass="objFormText"> 
								<bean:define id="perfil" property="perfis" name="usuarioForm" />
								<html:options collection="perfil" property="codigo" labelProperty="nome"/> 
							</html:select> 
						</td>
					
					</tr>
					
					
					<tr>
						<td  nowrap class="style1">
							<b>*E-mail:</b>
						</td>
						
						<td nowrap class="style1">
							<b>*Status:</b>
						</td>
						
						<td nowrap class="style1">
							<b>*Senha:</b>
						</td>
					</tr>
					
					<tr>	
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.email" title="E-mail" size="40" />
						</td>
						<td>
							<html:select property="usuarioDto.status" styleClass="objFormText" name="usuarioForm">
								<html:option value="A">Ativar</html:option>
								<html:option value="D">Desativar</html:option>
							</html:select>
						</td>
						
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.senha" title="Senha" size="25" />
						</td>
					</tr>

					
					<tr>
						<td>
						<br><br>
						</td>
					</tr>
					
					<tr>
						<td colspan="4" align="center">
							<input name="update" type="button" onClick="JavaScript:atualiza()" value="Salvar" class="btn" >
							<input type="button" value=" Fechar " class="btn" onclick="window.close()">
						</td>
					</tr>
					
				</table>		
			</fieldset>		
		</td>
	</tr>
</html:form>
</table>

<!-- FIM INCLUDE FORMULÁRIO  -->
            <div align="center"><span class="textoPequeno">OBS: Os campos sinalizados com um "*" s&atilde;o de preenchimento obrigat&oacute;rio.</span></div></td>
          </tr>
        </table></td>
      </tr>
      </table></td>
      <td background="img/brt.tab.right.middle.gif"><img src="img/spacer.gif"></td>
    </tr>
        <tr>
          <td height="13"><img src="img/brt.tab.left.bottom.gif" width="10" height="13"></td>
          <td background="img/brt.tab.bottom.middle.gif"><img src="img/spacer.gif"></td>
          <td height="13"><img src="img/brt.tab.right.bottom.gif" width="10" height="13"></td>
        </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>