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
  
  function update(){
  	  	document.forms[0].action="<%=request.getContextPath()%>/mantemUsuario.do?acao="update" " ;
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
        <td width="100%" background="img/brt.tab.top.middle.ex.gif"><strong><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif"><img src="img/xp.folder.open.gif" width="16" height="14" align="top">&nbsp;Gerência de Usuários </font></strong></td>
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
                  &nbsp;Gerência de Equipamentos</font></strong></td>
              </tr>
              </table>

<!-- INCLUDE FORMULÁRIO  -->
<table width="90%" align="center" id="tbEdit" border="0" cellpadding="0" cellspacing="10" >
<html:form action="/mantemUsuario" onsubmit="return validarForm(this)" method="post">
<html:hidden property="acao" value="incluir" name="usuarioForm" />
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Cadastradar Equipamento:</font></legend>
			<table align="center" border="0" cellspacing="5">
					<tr>
						<td nowrap class="style1">
								<b>*Nome:</b>
						</td>
						
						<td nowrap class="style1">
								<b>*Número de Patrimônio:</b>
						</td>
						
						<td nowrap class="style1">
								<b>*Endereço de Localização:</b>
						</td>
					</tr>
					<tr>	
						<td nowrap class="style1">
							<!-- 
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.nome" size="40" />
							-->
						</td>
						<td>
						<!-- 
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.cpf" size="25" />
						-->
						</td>
						<td colspan="2">
							<!-- 
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.rg" size="27" />
							-->
						</td>
					</tr>
					
					<tr>
						<td  nowrap class="style1">
							<b>*Nome do Responsável:</b>
						</td>
						<td nowrap class="style1">
							<b>Fone*:</b>
						</td>
						<td nowrap class="style1">&nbsp; &nbsp; &nbsp; &nbsp;
							<b>*Data Aquisição:</b>
						</td>
						<td nowrap class="style1">
							<b>*Marca:</b>
						</td>
					</tr>
					
					<tr>	
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.end" size="40" />
						</td>
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.cidade" size="25" />
						</td>
						<td> &nbsp; &nbsp; &nbsp; &nbsp;
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.uf" size="2" />
						</td>
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.telefoneComercial" size="15" />
						</td>
					</tr>
					
					
					<tr>
						<td  nowrap class="style1">
							<b>*Informações:</b>
						</td>
						<td nowrap class="style1">
							<b>*Status:</b>
						</td>
						<td nowrap class="style1">
							<b>*Modelo:</b>
						</td>
					</tr>
					
					<tr>	
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.empresa" size="40" />
						</td>
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.gerente" size="25" />
						</td>
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.telefoneCelular" size="15" />
						</td>
						<td>
							<html:select property="usuarioDto.perfil" styleClass="objFormText" name="usuarioForm">
								<html:option value="administrador">Administrador</html:option>
								<html:option value="atendente">Atendente</html:option>
								<html:option value="gerente">Gerente</html:option>
								<html:option value="tecnico">Técnico</html:option>
								<html:option value="usuario">Usuário</html:option>
							</html:select>
						</td>
					</tr>
					
					
					<tr>
						<td  nowrap class="style1">
							<b>*E-mail:</b>
						</td>
						<td nowrap class="style1">
							<b>*Senha:</b>
						</td>
					</tr>
					
					<tr>	
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.email" size="40" />
						</td>
						<td>
							<html:text name="usuarioForm" styleClass="objFormText" property="usuarioDto.senha" size="25" />
						</td>
					</tr>
					
					<tr>
						<td>
						<br><br>
						</td>
					</tr>
					
					<tr>
						<td colspan="4" align="center">
							<input name="salvar" type="button" onClick="JavaScript:cadastrar();" value="Salvar" class="btn" >
							<input name="limpar" type="reset" value="Restaurar" class="btn" >
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
    </table><td><br></td>
  </tr>
</table>