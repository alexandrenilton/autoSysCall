<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>

<script language="JavaScript">
  
  var name = new Array('chamadoDto.sumarioIncidente', 'chamadoDto.detalhamento', 'chamadoDto.numeroDePatrimonio');
	
  function asc(){
  		document.location.href="./Home.do" ;	
  }
  
  function abreChamado(){
  	  	var flag = validarCampos(document.forms[0], name);
  	  	if ( flag ) {
  	  		document.forms[0].action="<%=request.getContextPath()%>/mantemChamado.do?acao=cadastrarChamado" ;
	   	document.forms[0].submit();
  		}
  	}
  	
  function principal(){
  		document.location.href="./mantemChamado.do?acao=show" ;	
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
        <td width="100%" background="img/brt.tab.top.middle.ex.gif"><strong><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif"><img src="img/xp.folder.open.gif" width="16" height="14" align="top">&nbsp;Abrir Chamado</font></strong></td>
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
                  &nbsp;Abrir Chamado</font></strong></td>
              </tr>
              </table>

<!-- INCLUDE FORMULÁRIO  -->
<table width="90%" align="center" id="tbEdit" border="0" cellpadding="0" cellspacing="10" >
<html:form action="/mantemChamado" onsubmit="return validarForm(this)" method="post">
<html:hidden property="acao" value="cadastrarChamado" name="chamadoForm" />
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Dados para o chamado:</font></legend>
			<table align="center" border="0" cellspacing="5">
					<tr>
						<td nowrap class="style1">
							<b>*UserId:</b>
						</td>
						
						<td nowrap class="style1" colspan="2">
								<b>*Nome:</b>
						</td>
						
						<td nowrap class="style1">
								<b>*CPF:</b>
						</td>
						
						<td nowrap class="style1">
							<b>*RG</b>
						</td>
						
					</tr>
					<tr>	
						<td nowrap class="style1">
							<html:text name="chamadoForm" styleClass="objFormText" property="usuarioDto.userId" size="10" readonly="true"/>
						</td>
						<td nowrap class="style1" colspan="2">
							<html:text name="chamadoForm" styleClass="objFormText" property="usuarioDto.nome" size="43" disabled="true"/>
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="usuarioDto.cpf" size="25" disabled="true"/>
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="usuarioDto.rg" size="25" disabled="true"/>
						</td>
					</tr>
					
					<tr>
						<td nowrap class="style1">
							<b>*Telefone Comercial:</b>
						</td>
						
						<td nowrap class="style1">
							<b>*Telefone Celular:</b>
						</td>
						
						<td nowrap class="style1">
							<b>*Empresa:</b>
						</td>
						
						<td nowrap class="style1">
							<b>*Gerente:</b>
						</td>
						
						<td nowrap class="style1">
							<b>*Perfil:</b>
						</td>
						
					</tr>
					
					<tr>	
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="usuarioDto.telefoneComercial" size="15" disabled="true"/>
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="usuarioDto.telefoneCelular" size="15" disabled="true" />
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="usuarioDto.empresa" size="23" disabled="true"/>
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="usuarioDto.gerente" size="20" disabled="true"/>
						</td>
					   <td>
							<html:text name="chamadoForm" styleClass="objFormText" property="usuarioDto.perfil" size="20" disabled="true"/>
						</td>
					</tr>
					<tr>
						<td><br>
						</td>
					</tr>
					
					<tr>
						<td>
							<br>
						</td>
						<td>
						</td>
						<td align="center" class="style1">
							<font color="#004080"><b>Campos para edi&ccedil;&atilde;o:</b></font>
						</td>
					</tr>
					<tr>
						<td><br>
						</td>
					</tr>
					
					
				   <tr>
				   	<td nowrap class="style1">
				   		<b>*Categoria:</b>
				   	</td>
				   	<td nowrap class="style1" colspan="0">
				   		<b>*Classe:</b>
				  		</td>
				  		<td nowrap class="style1" colspan="0">
				   		<b>*Componentes:</b>
				  		</td>
				  		<td nowrap class="style1">
				   		<b>*Problema:</b>
				  		</td>
				  		<td nowrap class="style1">
				   		<b>*Número de Patrimônio:</b>
				  		</td>
				  	</tr>
				   
					<tr>
						<td>
						
							<html:select name="chamadoForm" property="chamadoDto.categoria" styleClass="objFormText"> 
								<bean:define id="categoria" property="categorias" name="chamadoForm" />
								<html:options collection="categoria" property="codigo" labelProperty="nome"/> 
							</html:select> 
						
						</td>
						
						<td>
							<html:select name="chamadoForm" property="chamadoDto.classe" styleClass="objFormText" >
							   <bean:define id="classe" property="classes" name="chamadoForm" />
							   <html:options collection="classe" property="codigo" labelProperty="nome" />
							</html:select>
						</td>
						
						<td>
							<html:select name="chamadoForm" property="chamadoDto.componente" styleClass="objFormText" >
							   <bean:define id="componente" property="componentes" name="chamadoForm" />
							   <html:options collection="componente" property="codigo" labelProperty="nome" />
							</html:select>
						</td>
						<td>
							<html:select name="chamadoForm" property="chamadoDto.problema" styleClass="objFormText" >
							   <bean:define id="problema" property="problemas" name="chamadoForm" />
							   <html:options collection="problema" property="codigo" labelProperty="nome" />
							</html:select>
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDto.numeroDePatrimonio" size="20" />
						</td>					
					</tr>
					<tr>
						<td>
							<br>
						</td>
					</tr>
					
					<tr nowrap class="style1">
						<td nowrap class="style1">
							<b>*Sumário do incidente: </b>
						</td>
					</tr>
					
					<tr nowrap class="style1">
						<td>
						</td>
						<td colspan="3">
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDto.sumarioIncidente" size="70" />
						</td>
					</tr>
					
					<tr nowrap class="style1">
						<td nowrap class="style1">
							<b>*Detalhamento: </b>
						</td>
					</tr>
					
					<tr nowrap class="style1">
						<td>
						</td>
						<td colspan="3">
							<html:textarea name="chamadoForm" styleClass="objFormText" property="chamadoDto.detalhamento" cols="70" rows="10"/> 
						</td>
					</tr>
					
					<tr>
						<td>
						<br><br>
						</td>
					</tr>
					
					<tr>
						<td colspan="5" align="center">
							<input name="salvar" type="button" onClick="JavaScript:abreChamado()" value="Salvar" class="btn" >
							<input name="limpar" type="reset" value="Restaurar" class="btn" >
							<input name="voltar" type="button" onClick="JavaScript:principal()" value="Sair" class="btn" >
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