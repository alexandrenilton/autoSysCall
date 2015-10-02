<%
	String chave = (String) session.getAttribute("CHAVE_ASC");
	String nome = (String) session.getAttribute("NOME_ASC");
	String perfil = (String) session.getAttribute("PERFIL_ASC");

	String[] arrMes = new String[] { "Janeiro", "Fevereiro",
			"Mar&ccedil;o", "Abril", "Maio", "Junho", "Julho",
			"Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" };
	java.text.SimpleDateFormat diaFormato = new java.text.SimpleDateFormat(
			"dd");
	java.text.SimpleDateFormat mesFormato = new java.text.SimpleDateFormat(
			"MM");
	java.text.SimpleDateFormat anoFormato = new java.text.SimpleDateFormat(
			"yyyy");
	java.util.Calendar dtData = java.util.Calendar.getInstance();
	String strData = diaFormato.format(dtData.getTime())
			+ " de "
			+ arrMes[Integer.parseInt(mesFormato.format(dtData
			.getTime())) - 1] + " de "
			+ anoFormato.format(dtData.getTime());
%>

<style>
.estilo1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 9pt;
	font-style: normal;
	color: #000000;
	font-weight: bold;
}

.menuTop {
	color: #FFFFFF;
	font-family: Tahoma, Verdana;
	font-size: 12px;
	text-decoration: none;
}
.estilo1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 9pt;
	font-style: normal;
	color: #000000;
	font-weight: bold;
}
.linha1 {
	background-color: transparent;
	font-family: Tahoma, Verdana;
	font-size: 12px;
}

.linha0 {
	background-color: #EAEAEA;
	font-family: Tahoma, Verdana;
	font-size: 12px;
}

.situacaoSolicitado {
	color: #0000FF;
}

.situacaoAgendado {
	color: Black;
}

.situacaoCancelado {
	color: Purple;
}

.situacaoProcessando {
	color: #0000FF;
}

.situacaoConcluido {
	color: #009933;
}
.situacaoErro {
	color: #FF0000;
  font-family: Tahoma, Verdana;
	font-size: 12px;
	text-decoration: none;
}


.menuTop {
	color: #FFFFFF;
	font-family: Tahoma, Verdana;
	font-size: 12px;
	text-decoration: none;
}

body {
 background-image: url(img/fundo_brt1.gif);
}
.style1 {
 font-family: Tahoma, Verdana;
 font-size: 12px;
}

.selectCombo {
 font-family: Tahoma, Verdana;
 font-size: 12px;
 width: 200px;
}

.style7 {font-size: 10px; font-family: Tahoma, Verdana; font-weight: bold; }
.style9 {font-size: 10px; font-family: Tahoma, Verdana; color: #2062B9; }
.style10 {
 color: #999999;
 font-family: Tahoma, Verdana;
 font-size: 12px;
}
.style11 {font-family: Tahoma, Verdana; font-size: 12px; color: #CC0000; }

.style12 {font-family: Tahoma, Verdana; font-size: 12px; color: #000000; }
a:link {
 color: #000000;
 text-decoration: none;
}
.style13 {
	color: #009900;
	font-weight: bold;
}
.style14 {font-size: 10px}
.style18 {
	font-size: 10px;
	color: #0000FF;
	font-weight: bold;
}
.style22 {font-size: 10px; font-weight: bold; }
.style23 {color: #FFFFFF}
.style24 {color: #CC0000}
.style25 {font-size: 10px; color: #009933; font-weight: bold; }
.style50 {font-size: 10px;}
.style60 {
	font-family: Tahoma, Verdana;
	font-size: 12px;
	font-weight: bold;
	color: #FFFFFF;
}
.style70 {	color: #999999;
	font-family: Tahoma, Verdana;
	font-size: 12px;
}
.style80 {	color: #009900;
	font-weight: bold;
}

a:visited {
 text-decoration: none;
color: #000000;
}
a:hover {
text-decoration: none;
}
a:active {
text-decoration: none;
}

</style>
<script>
  function encerra(){
      
      document.location.href="./encerraSessao.do";
  }
  function asc(){
  		document.location.href="./Home.do" ;	
  }
</script>

<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
  <TR><TD rowSpan=2 noWrap background="img/tab.bg.dln.new.gif">&nbsp;<img src="img/logoAutoSysCall.jpg" align="top"></TD>
     	<TD rowSpan=2><IMG src="img/tab.slide.hm.li.new.gif" width="109" height="90"></TD>
	    <TD width="100%" height=55 colSpan=12 align="right" valign="middle" bgColor=#336699><!--<img src="img/logo_HUR.gif" width="500" height="50" align="middle">--></TD>
  </TR>
  <TR>
			<TD><IMG src="img/tab.separator.off.gif"></TD>
     	<TD noWrap background="img/tab.bg.on.gif"><a href="javascript:asc();"><font face="Tahoma" size="2" color="#FFFFFF">
	      	<strong>&nbsp;&nbsp;&nbsp;AutoSysCall&nbsp;&nbsp;&nbsp;</strong></font></a></TD>
     	<TD><IMG src="img/tab.separator.on.r.gif"></TD>
      <TD noWrap background="img/fundoDescamarcado.png">
	      	<strong><a href="javascript:encerra();"><font face="Tahoma" size="2" color="#FFFFFF">&nbsp;&nbsp;&nbsp;Sair&nbsp;&nbsp;&nbsp;</font></a></strong></TD>
     	<TD><IMG src="img/separadorFinal.gif"></TD>
      <TD width="100%" align="right" valign="middle" background="img/tab.bg.sln.gif">
				<font color="#FFFFFF" size="2" face="Tahoma, Verdana"></font><font color="#FFFFFF" size="2" face="Tahoma, Verdana"> 
				<%=strData%>&nbsp;</font></TD>
  </TR>
</TBODY>
</TABLE>

<!-- Monta a linha mostrando o usuario logado -->
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr><td bgcolor="#4791c5"><font color="#FFFFFF" size="2" face="Tahoma, Verdana"> </font></td>
     	<td width="100%" bgcolor="#4791c5"><font color="#FFFFFF" size="2" face="Tahoma, Verdana"></font></td>
  </tr>
</table>

<!-- Monta o menu principal -->
<table width="100%" height="26px" background="img/fundo_barra2.gif" border="0" cellpadding="0" cellspacing="0">
<tr>
  <td >
  </td>
</tr>
</table>