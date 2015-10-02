<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>

<script language="JavaScript">
	
	var name = new Array("processoDto.quantidadeDia","processoDto.horaInicio", "processoDto.duracao");
	
	function cadastrar(){
	   var flag = validarCampos(document.forms[0], name);

	   if(flag){
			document.forms[0].action="<%=request.getContextPath()%>/cadastrarProcessoAutomatizado.do?acao=envioHur" ;
	   	document.forms[0].submit();
	   }
  	}
	
	function consultar(){
		document.forms[0].action="<%=request.getContextPath()%>/consultarProcessoAutomatizado.do?acao=envioHur" ;
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
<form method="post">
<input type="hidden" name="acao" />
<table width="50%" align="center">
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Processo Automatizado - Envio de HUR</font></legend>
			<table align="center">
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Status :</b>
							</div>
						</td>
						<td valing="buttom" class="labelForm">
							<select name="processoDto.status" class="objFormText">
								<option value="A">
									Processar
								</option>
								<option value="N">
									N&atilde;o processar
								</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Quantidade de dias :</b>
							</div>
						</td>
						<td valing="middle" class="labelForm">
							<input onkeypress="return somenteNumero(event)" class="objFormText" name="processoDto.quantidadeDia" title="Quantidade de Dias" size="15" type="number" maxlength="2" />
						</td>
					</tr>
				
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Hora de &iacute;nicio :</b>
							</div>
						</td>
						<td valing="middle" class="labelForm">
							<input onkeypress="return somenteNumero(event)" class="objFormText" name="processoDto.horaInicio" title="Hora Inicio" size="15" type="number" maxlength="2" />
					  </td>
					</tr>
					
					<tr>
						<td width="35%" valign="middle" nowrap class="style1">
							<div align="right">
								<b>Dura&ccedil;&atilde;o :</b>
							</div>
						</td>
						<td valing="middle" >
							<input onkeypress="return somenteNumero(event)" class="objFormText" name="processoDto.duracao"  title="Duração" size="15" type="number"   maxlength="2" />
						</td>
					</tr>
					<tr>
						<td>
						<br>
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align="center">
							<input name="BtbSalvar" type="button" onClick="JavaScript:cadastrar();" value="Cadastrar" class="btn">
							&nbsp;
							<input name="BtbConsultar" type="button" onClick="JavaScript:consultar();" value="Consultar" class="btn">
							&nbsp;
							<input name="BtLimpar" type="reset" value="Limpar" class="btn">
						</td>
					</tr>

				</table>
			</fieldset>		
		</td>
	</tr>
	</table>
</form>

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