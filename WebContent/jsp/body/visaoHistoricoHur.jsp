<%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic"%>

<script>

var arrayCampos = new Array("dto.diaInicial", "dto.diaFinal" , "dto.tipo");

function validarForm(form){
	return validarCampos(form, arrayCampos);
}

</script>

<br>
<table width="100%" border="0" cellspacing="0" cellpadding="3">
<tr><td>
  <table width="100%" border="0" cellspacing="0" cellpadding="3"><tr>
    <td width="100%"><table width="100%"  border="0" cellpadding="0" cellspacing="0">

    <!-- Mostra o nome do formulario na tela -->
    <tr>
        <td><img src="img/brt.tab.left.top.ex.gif" width="10" height="18"></td>
        <td width="100%" background="img/brt.tab.top.middle.ex.gif"><strong><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif"><img src="img/xp.folder.open.gif" width="16" height="14" align="top">&nbsp;Visão do Movimento histórico de Geração/Envio de HUR</font></strong></td>
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
          <tr><td><!-- table width="100%" border="0" cellpadding="0" cellspacing="0">
             	<tr>
                <td height="22" bgcolor="#73AAD2"><strong><font color="#FFFFFF" size="2" face="Tahoma, Verdana">
                  &nbsp;Agendando Geração de HUR Avulsa...</font></strong></td>
              </tr>
              </table -->

<!-- INCLUDE FORMULÁRIO  -->
			  <table width="50%" align="center">
<html:form action="/visaoHistoricoHur" onsubmit="return validarForm(this)" method="post">
<input type="hidden" name="acao" value="buscar" />
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Visão do Movimento histórico</font></legend>
			<table align="center">
				<tr>
					<td colspan="2">
						<br>
					</td>
				</tr>
				<tr>
					<td class="labelForm"  align="right" width="40%">
						* Período de Interesse (em dias) :
					</td>
					<td class="miniLabelForm" align="left" width="60%">
						incial <html:text onkeypress="return somenteNumero(event)" property="dto.diaInicial" size="2" maxlength="2" styleClass="objFormText" title="dia inicial" />
						final <html:text onkeypress="return somenteNumero(event)" property="dto.diaFinal" size="2" maxlength="2" styleClass="objFormText" title="dia final" /> 
					</td>
				</tr>
				<tr>
					<td class="labelForm" align="right">
						* Tipo de agendamento:
					</td>
					<td class="miniLabelForm"  align="left">
						geração <html:radio property="dto.tipo" value="G" styleClass="objFormText" title="Tipo de agendamento" /> 
						envio <html:radio styleClass="objFormText" property="dto.tipo" value="E" title="Tipo de agendamento" /> 
						ambos <html:radio property="dto.tipo" styleClass="objFormText" value="A" title="Tipo de agendamento" />
					</td>
				</tr>
				<tr>
					<td class="labelForm"   align="right">
						* Quantidade de Eventos :
					</td>
					<td align="left">
						<html:text onkeypress="return somenteNumero(event)" property="dto.qtdEventos" size="3" maxlength="3" styleClass="objFormText" title="Quantidade de Eventos" />
					</td>
				</tr>
				<tr>
					<td class="labelForm"  align="right">
						Processamento:
					</td>
					<td align="left" class="miniLabelForm" >
						sucesso <html:radio property="dto.flagOkNok" styleClass="objFormText" value="S" /> 
						falha <html:radio styleClass="objFormText" property="dto.flagOkNok" value="N" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table>
							<tr bgcolor="#336699">
								<td width="50px" align="center">
									<input class="objFormText" onclick="checkAll(this)" type="checkbox" name="todos" title="Selecionar todas as operadoras" />
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">OPERADORAS</font>
								</td>
								<td class="labelForm" align="center">
									<font color="#FFFFFF">PAÍS</font>
								</td>
							</tr>
							<% int indice = 0; %>
							<logic:iterate property="operadoras" id="op" name="visaoHistoricoHurForm">
							<% if(indice%2 == 0){ %>
							<tr bgcolor="#EFEFEF" title="<bean:write name="op" property="email" />">
							<% } else { %>
							<tr bgcolor="#F9F9F9" title="<bean:write name="op" property="email" />">
							<% } %>
								<td align="center">
									<input type="checkbox" name="dto.operadoras" title="Operadoras" value="<bean:write name="op" property="codigo" />">
								</td>
								<td class="labelForm">
									<bean:write name="op" property="nome" />
								</td>
								<td class="labelForm">
									<bean:write name="op" property="pais" />
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
						<input type="submit" class="btn" value=" Buscar ">  <input type="reset" class="btn" value=" Limpar ">
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
<logic:notEmpty name="visaoHistoricoHurForm" property="mensagem">
	<script>
		alert("<bean:write name="agendarGeracaoForm" property="mensagem" />");
	</script>
</logic:notEmpty>