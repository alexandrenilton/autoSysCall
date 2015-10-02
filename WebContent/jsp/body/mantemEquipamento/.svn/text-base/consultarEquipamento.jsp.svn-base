<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>

<script type="text/javascript" language="JavaScript" src="js/geral.js"></script>

<script language="JavaScript">

  
  var arrayCampos = new Array("equipamentos");
  
	function hur(){
  		document.location.href="./Home.do" ;	
  	}
  
  	function validarForm(form){
		return validarCampos(form, arrayCampos);
  	}
   
  	function limpar(){
		var arrayNaoLimpar = ['']
		limparFormulario(document.forms[0], arrayNaoLimpar);
  	}

   function consultar(){
   	document.forms[0].action="<%=request.getContextPath()%>/mantemEquipamentos.do?acao=consultarEquipamento" ;
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
        <td width="100%" background="img/brt.tab.top.middle.ex.gif"><strong><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif"><img src="img/xp.folder.open.gif" width="16" height="14" align="top">&nbsp;Gerência de Equipamentos</font></strong></td>
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
                  &nbsp;Gerência de Equipamentos...</font></strong></td>
              </tr>
              </table>

<!-- INCLUDE FORMULÁRIO  -->

<html:form action="/mantemUsuario" onsubmit="return validarForm(this)" method="post">
<input type="hidden" name="acao" value="buscar" />

	<table width="50%" align="center">
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Consultar Equipamento</font></legend>
			<table align="center">
				<tr>
					<td>
						<br><br>
					</td>
				</tr>
				<tr>
						<td nowrap class="style1" align="right">
							<div align="right">
								<b>Número de Patrimônio: </b>
							</div>
						</td>
						<td valing="buttom">
						   <input text class="objFormText" size="15" title="Número do patrimônio" >
						   <!-- 
						   <html:text name="equipamentoForm" styleClass="objFormText" property="equipamento.numeroPatrimonio" size="15"  title="UserId"/>
						   -->
						 </td>
					</tr>
					
					<tr>
						<td>
							<br><br>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input name="Consultar" type="submit" onClick="JavaScript:consultar();" value="Consultar" class="btn">
							<input name="Limpar"    type="reset"  value="Limpar" onClick="JavaScript:limpar()" class="btn" >
							<input name="Sair"      type="button" onClick="JavaScript:asc();" value="Sair" class="btn">
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
</table>