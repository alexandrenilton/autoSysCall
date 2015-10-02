<html:form action="/mantemChamado" method="post" name="chamadoForm">

<script>
  function principal(){
  		document.location.href="./mantemChamado.do?acao=show" ;	
  }
</script>


<table align="center">
	<tr>
		<td align="center">
			<br><br>
			<font color="#0000a0">
				<b>
				Chamado: <%=session.getAttribute("CHAMADO")%> aberto com Sucesso! 
				<br>T&eacute;cnico: <%=session.getAttribute("TECNICO")%> 
				<br>Tempo previsto para atendimento:  <%=session.getAttribute("TEMPO")%> horas 
				</b>
			</font>
		</td>
	</tr>
	
	
	<tr>
		<td align="center">
			<br><br><br><br><br>
			<input name="Voltar"      type="button" onClick="JavaScript:principal();" value="Voltar" class="btn">
							
		</td>
	</tr>
</table>
</html:form>