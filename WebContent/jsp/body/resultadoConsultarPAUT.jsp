<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>

<script language="JavaScript">
  function hur(){
  		document.location.href="./Home.do" ;	
  }
  
  function editar(){
  	var show = document.getElementById("tbShow");
  	var edit = document.getElementById("tbEdit");  
 
 	show.style.display = "none";
 	edit.style.display = "inline";
 
  }
  
  function update(){
  	  	document.forms[0].action="<%=request.getContextPath()%>/atualizarProcessoAutomatizado.do" ;
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
                  &nbsp;Ger�ncia de Processos Automatizados...</font></strong></td>
              </tr>
              </table>

<!-- INCLUDE FORMUL�RIO  -->
<table width="50%" align="center" id="tbShow" border="0" cellpadding="0" cellspacing="10" style="display: inline">
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Processo Automatizado Cadastrado:</font></legend>
			<table align="center">
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Nome :</b>
							</div>
						</td>
						<td valing="buttom">
						    <!-- name="nomeFormBean" property="objeto dentro do form.campo"-->
							<bean:write name="consultarPautForm" property="processoDto.nome" />
						</td>
					</tr>
					
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Status :</b>
							</div>
						</td>
						<td valing="buttom">
							<bean:write name="consultarPautForm" property="status" />
						</td>
					</tr>
					
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Quantidade de dias :</b>
							</div>
						</td>
						<td valing="middle">
							<bean:write name="consultarPautForm" property="processoDto.quantidadeDia" />
						</td>
					</tr>
				
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Hora de &iacute;nicio :</b>
							</div>
						</td>
						<td valing="middle" >
							<bean:write name="consultarPautForm" property="processoDto.horaInicio" />
						</td>
					</tr>
					
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Dura&ccedil;&atilde;o :</b>
							</div>
						</td>
						<td valing="middle" >
							<bean:write name="consultarPautForm"property="processoDto.duracao" /> 
						</td>
					</tr>
					<tr>
						<td>
						<br>
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align="center">
							<input name="Editar" type="button" onClick="JavaScript:editar();"' value="Editar" class="btn">
							<input name="Voltar" type="button" onClick="JavaScript:hur();" value="Voltar" class="btn">
						</td>
					</tr>
				</table>
			</fieldset>		
		</td>
	</tr>
</table>

<table width="50%" align="center" id="tbEdit" border="0" cellpadding="0" cellspacing="10" style="display: none">
<html:form action="/atualizarProcessoAutomatizado" method="post">
<html:hidden property="acao" name="consultarPautForm"/> 
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Processo Automatizado Cadastrado:</font></legend>
			<table align="center">
<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Status :</b>
							</div>
						</td>
						<td valing="buttom">
							<html:select property="processoDto.status" styleClass="objFormText" name="consultarPautForm">
								<html:option value="A">Processar</html:option>
								<html:option value="N">N�o processar</html:option>
							</html:select>
						</td>
					</tr>
					
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Quantidade de dias :</b>
							</div>
						</td>
						<td valing="middle">
							<html:text name="consultarPautForm" styleClass="objFormText" property="processoDto.quantidadeDia" size="10" />
						</td>
					</tr>
				
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Hora de &iacute;nicio :</b>
							</div>
						</td>
						<td valing="middle" >
							<html:text name="consultarPautForm" styleClass="objFormText" property="processoDto.horaInicio" size="10" />
						</td>
					</tr>
					
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Dura&ccedil;&atilde;o :</b>
							</div>
						</td>
						<td valing="middle" >
							<html:text name="consultarPautForm" styleClass="objFormText" property="processoDto.duracao" size="10" />
						</td>
					</tr>
					<tr>
						<td>
						<br>
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align="center">
							<input name="salvar" type="button" onClick="JavaScript:update();" value="Salvar" class="btn" >
							<input name="limpar" type="reset" value="Restaurar" class="btn" >
						</td>
					</tr>
					
				</table>
			</fieldset>		
		</td>
	</tr>
</html:form>
</table>

<!-- FIM INCLUDE FORMUL�RIO  -->
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