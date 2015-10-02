<%@ taglib uri="/tags/struts-tiles" prefix="tiles"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
    <title>ASC - Protótipo</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/asc.css" />
	<script src="<%= request.getContextPath() %>/js/asc.js" language="javascript"></script>
	<script src="<%= request.getContextPath() %>/js/calendar1.js" language="javascript"></script>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
   <tr>
         <td colspan="2"><tiles:get name="topo"/> </td>
   </tr>
   <tr>
         <td width="15%" align="right"><tiles:get name="menu" /> </td>
         <td width="73%"><tiles:get name="body"/> </td>
   </tr>
   <tr>
          <td colspan="2"><tiles:get name="rodape"/> </td>
   </tr>
</table>
</body>
</html>
