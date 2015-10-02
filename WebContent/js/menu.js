function cdd_menu121086(){

//Note: This data file may be manually customized

    //Unique Menu Id
	this.uid = 121086

/**********************************************************************************************
                               Icon Images
**********************************************************************************************/

    //Absolute positioned icon images (x,y positioned)

	this.abs_icon_image0 = "arrows_6.gif"
	this.abs_icon_rollover0 = "arrows_6_hl.gif"
	this.abs_icon_image_wh0 = "10,8"
	this.abs_icon_image_xy0 = "130,40"

/**********************************************************************************************
                              Global - Menu Container Settings
**********************************************************************************************/

	this.menu_background_color = "transparent"
	this.menu_border_color = "transparent"
	this.menu_border_width = 1 /*1*/
	this.menu_padding = "2,2,2,2" /*2,2,2,2*/
	this.menu_border_style = "none"
	this.divider_caps = false
	this.divider_width = 1
	this.divider_height = 1
	this.divider_background_color = "#000000"
	this.divider_border_style = "none"
	this.divider_border_width = 0
	this.divider_border_color = "#000000"
	this.menu_is_horizontal = false
	this.menu_width = 90
	/*adicionado*/
	this.menu_xy = "-80,3"
	this.menu_gradient = "progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr=#DAF0FD, endColorstr=#85BBE3)"

/**********************************************************************************************
                              Global - Menu Item Settings
**********************************************************************************************/

	this.menu_items_background_color_roll = "transparent"
	this.menu_items_text_color = "#000000"
	this.menu_items_text_decoration = "none"
	this.menu_items_font_family = "Tahoma"
	this.menu_items_font_size = "12px"
	this.menu_items_font_style = "normal"
	this.menu_items_font_weight = "normal"
	this.menu_items_text_align = "left"
	this.menu_items_padding = "0,5,0,5"/*"2,4,2,4"*/
	this.menu_items_border_style = "none"
	this.menu_items_border_color = "transparent"
	this.menu_items_border_width = 0
	this.menu_items_width = 90
	this.menu_items_text_decoration_roll = "underline"
	this.menu_items_text_color_roll = "#000000"
	this.menu_items_background_color = "transparent"

/**********************************************************************************************
                              Main Menu Settings
**********************************************************************************************/

  this.menu_background_color_main = "transparent"
  this.menu_items_background_color_roll_main = "transparent"
  this.menu_items_text_color_roll_main = "#000000"
  this.menu_border_color_main = "#004080"
  this.menu_is_horizontal_main = true

  this.item0 = "Gerência de Usuários"
  //this.item1 = "Agendamentos"
  /*this.item1 = "Remessas"*/
  //this.item2 = "Cenários"
        
  this.item_background_color_roll0 = "transparent"
  this.item_border_color0 = "#004080"
  this.item_width0 = 120
  this.item_width1 = 90  
  this.item_width2 = 90 

/**********************************************************************************************
                              Sub Menu Settings
**********************************************************************************************/

  //Sub Menu 0
  
  this.menu_width0 = 170 
  this.menu_xy0 = "-100,4"

  
  this.item0_0 = "Consultar Usuário"
  this.url0_0 = system_path+"/consultarUsuario.do?acao=show"
	
  
  this.item0_1 = "Cadastrar Usuário"
  this.url0_1 = system_path+"/cadastrarUsuario.do?acao=show"
  
  
  /*
  this.item0_2 = "Cancelar Usuário"
  this.url0_2 = system_path+"/cancelarUsuario.do?acao=show"
  
  this.item0_3 = "Excluir Usuário"
  this.url0_3 = system_path+"/excluirUsuario.do?acao=show"
	*/		
  
	//Sub Menu 1

  this.menu_width1 = 200 
  this.menu_xy1 = "-82,4" 
  
  // this.item1_0 = "Agendar Geração/Envio HUR"
  //this.url1_0 = system_path+"/agendarHurAvulso.do?acao=show"
  
  /*
  this.item1_1 = "Agendar Envio de HUR"
  this.url1_1 = system_path+"/agendarEnvioHur.do?acao=show"
  */
  
  this.menu_width0_0 = 170
  this.menu_xy0_0 = "-140,4"
  /*
  this.item0_0_0 = "Processo de Geração HUR"
  this.url0_0_0  = system_path+"/processoAutomatizado.do?acao=geracaoHur"
  
  this.item0_0_1 = "Processo de Envio HUR"
  this.url0_0_1 = system_path+"/processoAutomatizado.do?acao=envioHur"
  */
  /*      
  this.item1_1 = "Reciclar Remessas de Tráfego"
  this.url1_1 = system_path+"/consultaReciclagemRemessas.do?acao=abrir"
	*/

  //Sub Menu 2
  //Para opção 3
  this.menu_width2 = 200 
  this.menu_xy2 = "-82,4" 
  
  //this.item2 = "this.menu_width2"
  //this.url2 = system_path+"/mantemCenarios.do?acao=abrir"
  //this.item2_0 = "Manter Cenários"
  //this.url2_0 = system_path+"/mantemCenarios.do?acao=abrir"
  
}///////////////////////// END Menu Data /////////////////////////////////////////


//Document Level Settings

cdd__activate_onclick = false
cdd__showhide_delay = 50
cdd__url_target = "_self"
cdd__url_features = "resizable=1, scrollbars=1, titlebar=1, menubar=1, toolbar=1, location=1, status=1, directories=1, channelmode=0, fullscreen=0"
cdd__display_urls_in_status_bar = true
cdd__default_cursor = "hand"


if (window.showHelp){b_type = "ie"; 
if (!window.attachEvent) b_type += "mac";}

if (document.createElementNS) b_type = "dom";
if (navigator.userAgent.indexOf("afari")>-1) b_type = "safari";
if (window.opera) b_type = "opera"; 
qmap1 = "\<\script language=\"JavaScript\" vqptag='loader_sub' src=\""; qmap2 = ".js\">\<\/script\>";;

function iesf(){};;

function vqp_error(val){}

if (b_type){document.write(qmap1+cdd__codebase+"pbrowser_"+b_type+qmap2);
document.close();
}

