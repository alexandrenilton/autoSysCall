<%@ taglib uri="/tags/struts-bean" prefix="bean"%>
<%@ taglib uri="/tags/struts-html" prefix="html"%>
<%@ taglib uri="/tags/struts-logic" prefix="logic"%>
<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>

<logic:messagesPresent>
<link href="../../../css/estilo1.css" rel="stylesheet" type="text/css">
<table border="0" width="100%" cellpadding="0" cellspacing="10">
  <tr>
    <td height="20" colspan="2" valign="middle" nowrap class="style1 style10" style="border-bottom-style:dotted; border-bottom-width:thin; border-bottom-color:#73AAD2">
      Erros de valida&ccedil;&atilde;o
    </td>
  </tr>
              
  <tr>
    <td height="20" colspan="2" valign="middle" class="style70">
      <FONT color="#000000">N&atilde;o foi poss&iacute;vel realizar a consulta. Os seguintes erros foram encontrados:</FONT>
    </td>
  </tr>
              
  <tr>
    <td class="situacaoErro">
      <ul>
                      
        <html:messages id="error">
          <bean:write name="error"/><br>
        </html:messages>
      </ul>  
    </td>
  </tr>
</table>
</logic:messagesPresent>
