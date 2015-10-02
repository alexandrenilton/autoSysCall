<%@ include file="/cabecalho.jsp"%>
<html>

	<link rel="STYLESHEET" type="text/css" href="<c:url value="/css/padrao.css"/>">

	<script type="text/javascript" language="JavaScript" src="/js/formatadadosie.js"></script>
	<script type="text/javascript" language="JavaScript" src="/js/padrao.js"></script>
	<script type="text/javascript" language="JavaScript" src="/js/geral.js"></script>
	<script type="text/javascript" language="JavaScript" src="js/calendar1.js"></script>
	
	<script type="text/javascript" language="JavaScript" src="js/funcoes.js"> </script>
	
	<script language="JavaScript">
		function enviar(){
			document.forms[0].acao.value = 'CONSULTAR';
			document.forms[0].submit();
		}

		function limpar(){
			var arrayNaoLimpar = ['']
			limparFormulario(document.forms[0], arrayNaoLimpar);
		}
	</script>
	<body>
		<table border="0" cellspacing="0" cellpadding="0" width="650" height="650">
			<tr>
				<td width="177px">
					<c:import url="/menu.jsp" />
				</td>
				<td>
					<table border="0" cellspacing="0" cellpadding="0" width="670" height="650">
						<tr>
							<td width="670" bgcolor="#FFFFFF" valign="top" style="padding: 20px 15px 15px 15px;">
								<p>
									<span class="tit_a">Consulta Ofensores DETRAF</span>
									<br>
									<br>
									<span class="tit_b">Parâmetros de Pesquisa<font color="#FFFFFF"></font>
									</span>
								</p>
								<html:form action="/ConsultaOfensoresDetrafAction.do" method="post" styleClass="formItens">
									<input type="hidden" name="acao" />
									<table border="0" width="100%" cellpadding="1" cellspacing="1" class="conteudo">
										<tr>
											<th valign="buttom" colspan="2">
												Período:
											</th>
										</tr>
										<tr>
											<td valign="buttom" align="right">
												<font color="#DD0000">**</font><strong>Filial</strong>
											</td>
											<td valign="buttom" align="left">
												<label>
													<select name="filial">
														<option value="" selected="selected">Selecione</option>
													   <option value="4101">CRT - CR</option>
													   <option value="4051">CTMR - RS</option>
													   <option value="2786">TELEACRE - AC</option>
													   <option value="2779">TELEBRASILIA - DF</option>
													   <option value="2715">TELEGOIAS - GO</option>
													   <option value="2716">TELEGOIAS - TO</option>
													   <option value="2789">TELEMAT - MT</option>
													   <option value="2778">TELEMS - MS</option>
													   <option value="2794">TELEPAR - PR</option>
													   <option value="3191">TELERON - RO</option>
													   <option value="2784">TELESC - SC</option>
													</select>
												</label>
											</td>
										</tr>
										<tr>
											<td valign="buttom" align="right">
												<font color="#DD0000">**</font><strong>Terminal</strong>
											</td>
											<td valign="buttom" align="left">
												<input name="terminal" type="number" size="10" maxlength="10" value="">
												<a href="javascript:void(0);" onclick="document.forms[0].terminal.value='';" HIDEFOCUS><img
														src="img/limpar.jpg" width="25" height="22" border="0" align="absmiddle">
												</a>
											</td>
										</tr>

										<tr>
											<td valign="buttom" align="right">
												<font color="#DD0000">**</font><strong>Duração</strong>
											</td>
											<td valign="buttom" align="left">
												<input name="duracao" type="number" maxlength="3" size="10" value="">
												<a href="javascript:void(0);" onclick="document.forms[0].duracao.value='';" HIDEFOCUS><img
														src="img/limpar.jpg" width="25" height="22" border="0" align="absmiddle">
												</a>
												<span class="style9"> <font size="-1">(Soma da Duração da Ligação no Dia)</font> </span>
											</td>
										</tr>

										<tr>
											<td valign="buttom" align="right">
												<font color="#DD0000">**</font><strong>Data Início</strong>
											</td>
											<td valign="buttom" align="left">
												<!--
												<input name="dataInicio" type="text" maxlength="10" size="10">
												-->
												
												<input name="dataInicio" type="text" maxlength="10" size="10" onblur="formataData(this,'Data Inicial')" onkeypress="return somenteNumerosData(this,event)"/>
												
												<span> <a href="javascript:calDataInicio.popup();"><img src="img/calendario.gif" width="15"
															height="12" border="0" />
												</a> <font size="-1">(no formato <strong>dd/mm/aaaa</strong>)</font> </span>
											</td>
										</tr>
										<tr>
											<td valign="buttom" align="right">
												<font color="#DD0000">**</font><strong>Data Final</strong>
											</td>
											<td valign="buttom" align="left">
												<!-- 
												<input name="dataFim" type="text" maxlength="10" size="10">
												-->
												<input name="dataFim" type="text" maxlength="10" size="10" onblur="formataData(this,'Data Final')" onkeypress="return somenteNumerosData(this,event)"/>
												
												<span> <a href="javascript:calDataFim.popup();"><img src="img/calendario.gif" width="15"
															height="12" border="0" />
												</a> <font size="-1">(no formato <strong>dd/mm/aaaa</strong>)</font> </span>
											</td>
										</tr>
										
										<tr>
											<td valign="buttom" align="right">
												<font color="#DD0000">**</font><strong>Terminais c/ Anti-Burla?</strong>
											</td>
											<td valign="buttom" align="left">
												<label>
													<select name="antiBurla">
														<option value="ambos">Ambos</option>
														<option value="sim">Sim</option>
														<option value="nao">Não</option>
													</select>
												</label>
												
											</td>
										</tr>
										<tr>
											<td valign="buttom" align="right">
												<font color="#DD0000">**</font><strong>Ordenar Terminal/Data?</strong>
											</td>
											<td valign="buttom" align="left">
												<input name="ordena" type="checkbox">
											</td>
										</tr>
										   <script language="javascript">
                                      <!-- // create calendar object(s) just after form tag closed
                                         // specify form element as the only parameter (document.forms['formname'].elements['inputname']);
                                         // note: you can have as many calendar objects as you need for your application
                                         
                                      var calDataInicio = new calendar1(document.forms[0].elements['dataInicio']);
                                      calDataInicio.year_scroll = true;
                                      calDataInicio.time_comp = false;
                      
                                      var calDataFim = new calendar1(document.forms[0].elements['dataFim']);
                                      calDataFim.year_scroll = true;
                                      calDataFim.time_comp = false;
                                      //-->
                                  </script>
										
										<tr>
											<td colspan="2" align="center">
												<input name="BtbSalvar" type="button" onClick="JavaScript:enviar();" class="textItensGreen" id="BtbSalvar"
													value="Consultar">
												&nbsp;
												<input name="BtLimpar" type="button" onClick="JavaScript:limpar();" class="textItensGreen" id="BtLimpar"
													value="Limpar">
										</tr>
										<tr>
											<td colspan="2">
												<font color="#DD0000">** Preenchimento opcional!</font>
											</td>
										</tr>
									</table>
								</html:form>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<iframe width=174 height=189 name="gToday:normal:agenda.js" id="gToday:normal:agenda.js"
			src="/js/CrossFrame/ipopeng.htm" scrolling="no" frameborder="0"
			style="visibility:visible; z-index:999; position:absolute; top:-500px; left:-500px;">
		</iframe>
	</body>
</html>

