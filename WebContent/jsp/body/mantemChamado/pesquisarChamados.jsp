<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>

<script type="text/javascript" language="JavaScript" src="js/geral.js"></script>
<script type="text/javascript" language="JavaScript" src="js/caledar1.js"></script>

<script language="JavaScript">


  	function limpar(){
		var arrayNaoLimpar = [''];
		limparFormulario(document.forms[0], arrayNaoLimpar);
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
        <td width="100%" background="img/brt.tab.top.middle.ex.gif"><strong><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif"><img src="img/xp.folder.open.gif" width="16" height="14" align="top">&nbsp;Consultar Chamados</font></strong></td>
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
                  &nbsp;Consultar Chamados</font></strong></td>
              </tr>
              </table>

<!-- INCLUDE FORMULÁRIO  -->

<html:form action="/mantemChamado" onsubmit="return validarForm(this)" method="post">
<input type="hidden" name="acao" value="pesquisarChamados" />

	<table width="50%" align="center">
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Pesquisar Chamado</font></legend>
			<table align="center">
				<tr>
					<td>
						<br><br>
					</td>
				</tr>
				<tr>
				  <td nowrap class="style1" align="right">
				  <div> 
				    </div><div align="right"><div> 
					   <b>N&uacute;mero do Chamado: </b></div>
					 </div>
					</td>
					<td valing="buttom">
						  <html:text name="chamadoForm" styleClass="objFormText" property="chamadoDto.numero" size="15"  title="Número do Chamado" value=""/>
					</td>
				</tr>
				
				<tr>
				  <td nowrap class="style1" align="right"><div> 
				    </div><div align="right"><div> 
					   <b>User Id: </b></div>
					 </div>
					</td>
					<td valing="buttom">
						  <html:text name="chamadoForm" styleClass="objFormText" property="chamadoDto.userId" size="15"  title="UserId do Solicitante"/>
					</td>
				</tr>
				<tr>
				
				<tr>
				  <td nowrap class="style1" align="right"><div> 
				    </div><div align="right"><div> 
					   <b>Nome do Solicitante: </b></div>
					 </div>
					</td>
					<td valing="buttom">
						  <html:text name="chamadoForm" styleClass="objFormText" property="nome" size="15"  title="UserId do Solicitante"/>
					</td>
				</tr>
				<tr>
				
				  <td nowrap class="style1" align="right"><div> 
				    </div><div align="right"><div> 
					   <b>Status: </b></div>
					 </div>
					</td>
					<td valign="buttom">
						  <html:select property="chamadoDto.status" styleClass="objFormText">
						    <html:option value="todos">Todos</html:option>
						    <html:option value="aguardandoRecurso">Aguardando Recurso</html:option>
						    <html:option value="cancelado">Cancelado</html:option>
						    <html:option value="emaberto">Em Aberto</html:option>
						    <html:option value="emexecucao">Em Execução</html:option>
						    <html:option value="encaminhado">Encaminhado</html:option>
						    <html:option value="finalizado">Finalizado</html:option>
						    <html:option value="aguardando">Resolvido Final</html:option>
						    <html:option value="resolvidoParcial">Resolvido Parcialmente</html:option>
						  </html:select> 
					</td>
				</tr>
				
				<tr>
				  <td nowrap class="style1" align="right"><div> 
				    </div><div align="right"><div> 
					   <b>Data Abertura (Inicial): </b></div>
					 </div>
					</td>
					<td valing="buttom">
						  <html:text name="chamadoForm" styleClass="objFormText" property="chamadoDto.dataInicial" size="10"  title="Data Inicial"/>
							<a href="javascript:calDataInicial.popup();"><img src="img/calendario.gif" width="15" height="12" border="0" />
						   </a> <font size="-1">(no formato <strong>dd/mm/aaaa</strong>)</font>
					</td>
				</tr>
				
				<tr>
				  <td nowrap class="style1" align="right"><div> 
				    </div><div align="right"><div> 
					   <b>Data Abertura (Final): </b></div>
					 </div>
					</td>
					<td valing="buttom">
						  <html:text name="chamadoForm" styleClass="objFormText" property="chamadoDto.dataFinal" size="10"  title="Data Final"/>
							<a href="javascript:calDataFinal.popup();"><img src="img/calendario.gif" width="15" height="12" border="0" />
						   </a> <font size="-1">(no formato <strong>dd/mm/aaaa</strong>)</font>
					</td>
				</tr>
				<tr>
				  <td nowrap class="style1" align="right"><div> 
				    </div><div align="right"><div> 
					   <b>Ordernar por: </b></div>
					 </div>
					</td>
					<td valing="buttom" class="miniLabelForm">
						<html:radio property="chamadoDto.ordenacao"  styleClass="objFormText" value="data" title="Ordernar por Data de Abertura"/>
						<b>data</b>
						<html:radio property="chamadoDto.ordenacao"  styleClass="objFormText" value="numero"  title="Ordernar pelo Número do Chamado" />
						<b>número</b>
						<html:radio property="chamadoDto.ordenacao"  styleClass="objFormText" value="nome"  title="Ordernar pelo Nome do Solicitante" />
						<b>nome</b>
					</td>
				</tr>
					<tr>
						<td>
							<br><br>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input name="Pesquisar" type="submit" onClick="JavaScript:consultar();" value="Consultar" class="btn">
							<input name="Limpar"    type="reset"  value="Limpar" onClick="JavaScript:limpar()" class="btn" >
							<input name="Voltar"      type="button" onClick="JavaScript:principal();" value="Sair" class="btn">
							<br><br>
						</td>
					</tr>
				</table>
			</fieldset>		
		</td>
	</tr>
		<script language="javascript">
   			var calDataInicial = new calendar1(document.forms[0].elements['chamadoDto.dataInicial']);
   			calDataInicial.year_scroll = true;
				calDataInicial.time_comp = false;
				
				var calDataFinal = new calendar1(document.forms[0].elements['chamadoDto.dataFinal']);
   			calDataFinal.year_scroll = true;
				calDataFinal.time_comp = false;
	</script>	
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
