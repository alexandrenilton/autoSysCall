<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>
<br>
<table width="100%" border="0" cellspacing="0" cellpadding="3">
<tr><td>
  <table width="100%" border="0" cellspacing="0" cellpadding="3"><tr>
    <td width="100%"><table width="100%"  border="0" cellpadding="0" cellspacing="0">

    <!-- Mostra o nome do formulario na tela -->
    <tr>
        <td><img src="img/brt.tab.left.top.ex.gif" width="10" height="18"></td>
        <td width="100%" background="img/brt.tab.top.middle.ex.gif"><strong><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif"><img src="img/xp.folder.open.gif" width="16" height="14" align="top">&nbsp;Ativar envio de HUR para as Operadoras</font></strong></td>
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
<form action="editarEnvioOperadora.do" method="post">
<input type="hidden" name="acao" value="incluir" />
<table align="center">
	
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
	<logic:iterate property="operadoras" id="op" name="editarEnvioOperadoraForm">
	<% if(indice%2 == 0){ %>
	<tr bgcolor="#EFEFEF" title="<bean:write name="op" property="email" />">
	<% } else { %>
	<tr bgcolor="#F9F9F9" title="<bean:write name="op" property="email" />">
	<% } %>
		<td align="center">
			<logic:equal name="op" property="processaEmpresa" value="P">
				<input type="checkbox" checked="checked" name="codigos" value="<bean:write name="op" property="codigo" />">
			</logic:equal>
			<logic:notEqual name="op" property="processaEmpresa" value="P">
				<input type="checkbox" name="codigos" value="<bean:write name="op" property="codigo" />">
			</logic:notEqual>
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
		<tr>
		<td align="center" colspan="3">
			<input class="btn" type="submit" value=" Ativar " />
		</td>
	</tr>
</table>
</form>
<!-- FIM INCLUDE FORMULÁRIO  -->
			</td>
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
<logic:notEmpty name="editarEnvioOperadoraForm" property="mensagem">
	<script>
		alert("<bean:write name="editarEnvioOperadoraForm" property="mensagem" />");
	</script>
</logic:notEmpty>