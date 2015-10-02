<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>

<script language="JavaScript">

   function asc(){
  		document.location.href="./Home.do" ;	
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
        <td width="100%" background="img/brt.tab.top.middle.ex.gif"><strong><font color="#FFFFFF" size="2" face="Arial, Helvetica, sans-serif"><img src="img/xp.folder.open.gif" width="16" height="14" align="top">&nbsp;Consultar Chamado</font></strong></td>
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
                  &nbsp;Consultar Chamado</font></strong></td>
              </tr>
              </table>

<!-- INCLUDE FORMULÁRIO  -->
<table width="90%" align="center" id="tbEdit" border="0" cellpadding="0" cellspacing="10" >
<html:form action="/mantemChamado" method="post">
<html:hidden property="acao" value="salvaAtualizacaoChamado" name="chamadoForm" />
	<tr>
		<td>
			<fieldset style="border-left: 1px solid #336699;border-right: 1px solid #336699;border-top: 1px solid #336699;border-bottom: 1px solid #336699"><legend class="labelForm"><font color="#336699">Dados do Chamado:</font></legend>
			<table align="center" border="0" cellspacing="5">
					<tr>
						<td>
						</td>
						<td>
						</td>
						<td colspan="3" nowrap class="style1">
							<b>*Chamado:</b>
							<html:text name="chamadoForm" styleClass="objFormText" property="numero" size="10" readonly="true"/>
							<br><br>
						</td>
					</tr>
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
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.usuarioDto.userId" size="10" readonly="true"/>
						</td>
						<td nowrap class="style1" colspan="2">
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.usuarioDto.nome" size="43" disabled="true"/>
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.usuarioDto.cpf" size="25" disabled="true"/>
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.usuarioDto.rg" size="25" disabled="true"/>
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
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.usuarioDto.telefoneComercial" size="15" disabled="true"/>
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.usuarioDto.telefoneCelular" size="15" disabled="true" />
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.usuarioDto.empresa" size="23" disabled="true"/>
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.usuarioDto.gerente" size="20" disabled="true"/>
						</td>
					   <td>
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.usuarioDto.perfil" size="20" disabled="true"/>
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
							<bean:write name="chamadoForm" property="chamadoDetalhadoDto.chamadoDto.categoria"  />
						</td>
						<td>
							<bean:write name="chamadoForm" property="chamadoDetalhadoDto.chamadoDto.classe" />
						<td>
							<bean:write name="chamadoForm" property="chamadoDetalhadoDto.chamadoDto.componente" />
						</td>
						<td>
							<bean:write name="chamadoForm" property="chamadoDetalhadoDto.chamadoDto.problema"  />
						</td>
						<td>
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.chamadoDto.numeroDePatrimonio" size="20" disabled="true"/>
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
						<td nowrap class="style1">
							
						</td>
						<td nowrap class="style1">
							
						</td>
						<td>
						</td>
						<td nowrap class="style1">
							
						</td>
					</tr>
					
					<tr nowrap class="style1">
						<td>
						</td>
						<td colspan="3">
							<html:text name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.chamadoDto.sumarioIncidente" size="70" disabled="true"/>
						</td>
						<td colspan="3">
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
							<html:textarea name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.chamadoDto.detalhamento" cols="70" rows="10" disabled="true"/> 
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
					
					<tr nowrap class="style1">
						<td nowrap class="style1">
							<b>*Registro de Trabalho: </b>
						</td>
						<td></td>
						<td></td>
						<td></td>
						<td nowrap class="style1">
							<b>*Status</b>
						</td>
					</tr>
					<tr nowrap class="style1" height="100" valign="top">
						<td>
						</td>
						<td colspan="3">
							<html:textarea name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.chamadoDto.registroDeTrabalho" cols="70" rows="10"/> 
						</td>
						<td colspan="0">
						  <html:select property="chamadoDetalhadoDto.chamadoDto.status" styleClass="objFormText" name="chamadoForm">
								<html:option value="Aguardando Recurso">Aguardando Recurso</html:option>
								<html:option value="Cancelado">Cancelado</html:option>
								<html:option value="Em Aberto">Em Aberto</html:option>
								<html:option value="Em execução">Em Execução</html:option>
								<html:option value="Encaminhado">Encaminhado</html:option>
								<html:option value="Finalizado">Finalizado</html:option>
								<html:option value="Resolvido Final">Resolvido Final</html:option>
								<html:option value="Resolvido Parcial">Resolvido Parcial</html:option>
							</html:select>
						</td> 
					</tr>
					
					<tr nowrap class="style1">
						<td nowrap class="style1">
							<b>*Descrição da Solução: </b>
						</td>
					</tr>
					
					<tr nowrap class="style1" valign="top">
						<td>
						</td>
						<td colspan="3" valign="top">
							<html:textarea name="chamadoForm" styleClass="objFormText" property="chamadoDetalhadoDto.chamadoDto.descricaoSolucao"  cols="70" rows="2"/>
						</td>
					</tr>
					
					
					<tr>
						<td colspan="5" align="center">
							<input name="salvar" type="submit" value="Salvar" class="btn" >
							<input name="limpar" type="reset"  value="Restaurar" class="btn" >
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