
l85 = 0;
l86 = null;
l87 = null;
l88 = null;
l89 = null;
l90 = 0;
l0 = cdd__showhide_delay;
document.attachEvent("onmousemove", l82);
attachEvent("onload", l100);
if (l1 = cdd__activate_onclick) {
	document.attachEvent("onmousedown", l83);
}
l84 = 0;
l9 = new Array("_background_color", "_text_color", "_font_family", "_font_size", "_font_style", "_font_weight", "_text_decoration", "_border_style", "_border_color", "_border_width", "_padding", "_background_image", "_text_align", "_animation", "_gradient", "_shadow", "_transparency", "_glow");
l102 = new Array("dhtml", "menu", "opencube");
l10 = new Array("background-color", "color", "font-family", "font-size", "font-style", "font-weight", "text-decoration", "border-style", "border-color", "border-width", "padding", "background-image", "text-align");
amc0 = new Array(104, 116, 116, 112, 58, 47, 47);
amc1 = new Array(119, 119, 119, 46, 111, 112, 101, 110, 99, 117, 98, 101, 46, 99, 111, 109, 47);
uisys = new Array(70, 111, 114, 32, 70, 82, 69, 69, 32, 109, 101, 110, 117, 32, 117, 115, 101, 44, 32, 118, 105, 115, 105, 116, 32, 45, 32, 104, 116, 116, 112, 58, 47, 47, 119, 119, 119, 46, 111, 112, 101, 110, 99, 117, 98, 101, 46, 99, 111, 109, 47, 102, 114, 101, 101, 46, 104, 116, 109, 108);
function l11(is_h, index, id) {
	if (is_h) {
		if (id) {
			return "width:100%;";
		} else {
			return "width:0;";
		}
	}
	if (id) {
		return "width:" + l41(l2, "item_width", id, l41(l2, "menu_items_width", index)) + "px;";
	} else {
		return "width:" + l41(l2, "menu_width", index) + "px;";
	}
}
function create_menu(l12, l13, index) {
	l2 = new window["cdd_menu" + l12];
	this.dc = window.cdd__default_cursor;
	this.l14 = l12 + "_" + index;
	this.l15 = "style='position:absolute;";
	this.ofl = "m_step=" + l41(l2, "menu_scroll_step", index, 5) + " l107=" + l41(l2, "menu_scroll_delay", index, 0) + " m_flow=" + (l41(l2, "menu_scroll_reverse_on_hide", index, 0) + 0) + " l109=" + l41(l2, "menu_scroll_direction", index, 0) + " style='overflow:hidden;visibility:hidden;position:absolute;z-index:" + (l90++) + ";'";
	if (!index) {
		l13 = "";
		index = "_main";
		this.l14 = l12;
		this.l15 = "cdd_uid=" + l12 + " l51=1 style='";
		this.ofl = "";
	}
	this.l16 = " l73=\"" + l41(l2, "show_menu", index) + "\" l74=\"" + l41(l2, "hide_menu", index) + "\"";
	this.l17 = l41(l2, "menu_is_horizontal", index);
	this.sd = "<div cdd_isacontainer=1 id='cdd_acontainer" + l12 + "_" + l13 + "menu' " + this.ofl + ">";
	this.sd += "<div l18=" + (this.l17 + 0) + " " + this.l16 + " l19=0 l20='cdd_item" + this.l14 + "' id='cdd_item" + l12 + "_" + l13 + "menu' " + this.l15 + " cursor:" + this.dc + ";left:0;top:0;" + l26(l2, "menu", index) + l11(this.l17, index) + "'>";
	this.sd += "<table width='100%' border=0 cellspacing=0 cellpadding=0>";
	if (this.l17) {
		this.sd += "<tr>";
	}
	this.i = 0;
	while (l2["item" + (this.id = l13 + this.i)]) {
		this.l3 = l12 + "_" + this.id;
		this.l4 = l41(l2, "divider_caps", index);
		if ((this.i == 0) && this.l4) {
			this.sd += l40(l2, l12, index, this.l17);
		}
		this.l21 = this.dc;
		this.l22 = "onclick=\"";
		this.l91 = "";
		if (this.l5 = l2["click" + this.id]) {
			this.l22 += this.l5 + ";";
			this.l21 = "hand";
		}
		if (this.l5 = l2["url" + this.id]) {
			this.l22 += "window.open('" + get_l80_path(this.l5, l12) + "','" + l41(l2, "url_target", this.id, cdd__url_target) + "','" + l41(l2, "url_features", this.id, cdd__url_features) + "')";
			this.l21 = "hand";
			if (window.cdd__display_urls_in_status_bar) {
				this.l91 = "cdd_status='" + this.l5 + "'";
			}
			if (this.l5 = l2["status" + this.id]) {
				this.l91 = "cdd_status='" + this.l5 + "'";
			}
		}
		this.l22 += "\"";
		this.l6 = l41(l2, "menu_xy", this.id);
		this.l6 = this.l6.split(",");
		if (!this.l17) {
			this.sd += "<tr>";
		}
		this.sd += "<td>";
		this.sd += "<div id='cdd_item" + this.l3 + "_hl' cdd_l29=1 l19=1 l36='" + this.l3 + "' " + this.l22 + "  cdd_hl=" + (!(!(l2["item" + this.id + "_0"] + l2["url" + this.id] + l2["click" + this.id])) + 0) + " style='position:absolute;cursor:" + this.l21 + ";visibility:hidden;" + l26(l2, "item", this.id, index, 1, 1) + "'>";
		this.sd += l33(l2, this.id, "rel", this.l3, 1, l12);
		this.sd += l41(l2, "item_roll", this.id, l2["item" + this.id]) + "</div>";
		this.sd += "<span l20='cdd_item" + this.l14 + "' l23='" + this.l6[0] + "' l24='" + this.l6[1] + "' " + this.l22 + " l25=" + l12 + " l19=1 " + this.l91 + " id='cdd_item" + this.l3 + "' style='cursor:" + this.l21 + ";height:100%;" + l26(l2, "item", this.id, index, 0, 1) + l11(!this.l17, index, this.id) + "'>";
		this.sd += l33(l2, this.id, "rel", this.l3, 0, l12);
		this.sd += l2["item" + this.id] + "</span>";
		this.sd += l33(l2, this.id, "abs", this.l3, 1, l12);
		this.sd += "</td>";
		if (!this.l17) {
			this.sd += "</tr>";
		}
		if (this.l4 || (l2["item" + l13 + (this.i + 1)])) {
			this.sd += l40(l2, l12, index, this.l17);
		}
		if (l2["item" + this.id + "_0"]) {
			new create_menu(l12, this.id + "_", this.id);
		}
		this.i++;
	}
	if (this.l17) {
		this.sd += "</tr>";
	}
	this.sd += "</table></div></div>";
	this.sd += l33(l2, index, "point", this.l14, 0, l12);
	document.write(this.sd);
}
function l26(l2, l27, id, l7, l29, l28, l30) {
	this.l31 = "";
	l8 = "";
	l32 = "";
	for (q = 0; q < l9.length; q++) {
		if (l29) {
			l8 = "_roll";
		}
		while (1) {
			if (l28) {
				l5 = l41(l2, "item" + l9[q] + l8, id, l41(l2, "menu_items" + l9[q] + l8, l7));
			} else {
				l5 = l41(l2, l27 + l9[q], id);
			}
			if (l5 != null) {
				if (q == 11) {
					l5 = l10[q] + ":url(" + get_l80_path(l5, l2.uid) + ");";
				} else {
					if (l10[q]) {
						l5 = l10[q] + ":" + l5 + ";";
					} else {
						if (!l32) {
							this.l31 += "filter:";
						}
						l32 = ";";
					}
				}
				this.l31 += l5;
			} else {
				if (l8 == "_roll") {
					l8 = "";
					continue;
				}
			}
			break;
		}
	}
	return this.l31 + l32;
}
function l33(l2, id, l27, l3, roll, l12) {
	dd = "";
	if ((iid = l41(l2, "icon_" + l27, id)) != null && iid > -1) {
		icipp = l37(l2, l27 + "_icon_image_wh" + iid, "width=", " height=", "") + ">";
		icwh = l37(l2, l27 + "_icon_image_wh" + iid, "width:", ";height:", ";");
		icxy = l37(l2, l27 + "_icon_image_xy" + iid, "left:", ";top:", ";");
		icstatic = "<img src='" + get_l80_path(l2[l27 + "_icon_image" + iid], l12) + "' " + icipp;
		if (roll) {
			icroll = "<img src='" + get_l80_path(l2[l27 + "_icon_rollover" + iid], l12) + "' " + icipp;
		}
		if (l27 == "rel") {
			(roll) ? dd += icroll : dd += icstatic;
		} else {
			if (l27 == "abs") {
				dd += "<div cdd_l29=1 style='position:absolute;'><div l19=1 l36='" + l3 + "' style='position:absolute;" + icxy + "'>";
				dd += "<div id='cdd_item" + l3 + "l35'  style='position:absolute;visibility:hidden;'>" + icroll + "</div>" + icstatic + "</div></div>";
			} else {
				dd += "<div id='cdd_item" + l3 + "_pointer' cdd_br=" + (l2["point_icon_image_br" + iid] + 0) + " style='position:absolute;z-index:" + l90 + ";visibility:hidden;top:0;left:0;" + icwh + "'><div l19=0 l20='cdd_item" + l3 + "' style='position:absolute;" + icxy + "'>" + icstatic + "</div></div>";
			}
		}
	}
	return dd;
}
function l37(l2, l39, l, c, r) {
	rval = "";
	if (l38 = l2[l39]) {
		rval = l + l38.replace(",", c) + r;
	}
	return rval;
}
function l40(l2, l12, hid, t_hor) {
	dd = "";
	p2 = l26(l2, "divider", hid, 0, 0, 0, 1) + "font-size:0px;";
	if (!(p3 = l41(l2, "divider_html", hid))) {
		p3 = "";
	}
	if (t_hor) {
		if (l5 = l41(l2, "divider_width", hid)) {
			dd += "<td height=100% style='" + p2 + "'><div style='width:" + l5 + ";overflow:hidden;'>" + p3 + "</div></td>";
		}
	} else {
		if (l5 = l41(l2, "divider_height", hid)) {
			dd += "<tr><td width=100% style='" + p2 + "'><div style='height:" + l5 + ";overflow:hidden;'>" + p3 + "</div></td></tr>";
		}
	}
	return dd;
}
function l41(l2, l42, id, l43) {
	if (l2[l42 + id] != null) {
		return l2[l42 + id];
	} else {
		if (l2[l42] != null) {
			return l2[l42];
		} else {
			if (l43 != null) {
				return l43;
			} else {
				return null;
			}
		}
	}
}
function l100() {
	cm = "";
	for (us in uisys) {
		cm += String.fromCharCode(uisys[us]);
	}
	cmm = new Array("vqp", "location");
	for (ci in cmm) {
		window["cm" + ci] = "";
		for (us in (uis = window["amc" + ci])) {
			window["cm" + ci] += String.fromCharCode(uis[us]);
		}
	}
	if (window.cdd__go) {
		return 0;
	}
	if ((window[cmm[1]] + "").indexOf(cm0) + 1) {
		csd_target = 0;
		cmh = window[cmm[1]].hostname;
		for (i = 0; i < cmh.length; i++) {
			csd_target += cmh.charCodeAt(i);
		}
		tc = 0;
		while (ncv = window["cdd__code" + tc]) {
			if (csd_target == ncv) {
				return 0;
			}
			tc++;
		}
	}
	ub = document.getElementsByTagName("a");
	for (lf in ub) {
		if (l5 = ub[lf].href) {
			if (l5 = l5.toLowerCase()) {
				if (!l5.indexOf(cm0 + cm1)) {
					if ((window[cmm[1]] + "").indexOf(cm0) + 1) {
						try {
							if (l39_layout(ub[lf])) {
								break;
							}
							is_continue = 1;
							for (lih in l102) {
								if (!(ub[lf].innerHTML.toLowerCase().indexOf(l102[lih]) + 1)) {
									is_continue = 0;
								}
							}
							if (ub[lf].children.length) {
								break;
							}
							if (is_continue) {
								ub[lf].style.visibility = "visible";
								ub[lf].style.display = "inline";
								ub[lf].style.position = "relative";
								ub[lf].style.color = "#0044ee";
								ub[lf].style.zIndex = 9999999999;
								ub[lf].style.fontFamily = "Arial";
								ub[lf].style.fontSize = "12px";
							} else {
								break;
							}
						}
						catch (e) {
						}
					}
					return 0;
				}
			}
		}
	}
	if ((window[cmm[1]] + "").indexOf(cm0) + 1) {
		vqp_error(cm);
	}
}
function l39_layout(l79) {
	do {
		if ((l79.currentStyle.display == "none") || (l79.currentStyle.position == "relative") || (l79.currentStyle.position == "absolute")) {
			return "http://";
		}
	} while ((l79 = l79.parentNode) && (l79 != document.body));
}
function l44(l45) {
	return window[l45.l20 + "_menu"];
}
function l46(l49, l47, l48) {
	if (l49 != l47) {
		if (this.l50 = window[l49.l20]) {
			new l46(l44(this.l50), l47, l48);
		}
		this.tc = l49.parentElement;
		if ((!l49.l51) && (l49 != l48) && (this.tc.style.visibility == "visible")) {
			if (parseInt(this.tc.l109)) {
				if (!this.tc.l108) {
					this.tc.l108 = 1;
					if (!parseInt(this.tc.m_flow)) {
						this.tc.l105 = -this.tc.l105_off;
					} else {
						this.tc.l105 = this.tc.l105_off;
					}
					l106(this.tc, 0);
				}
			} else {
				iesf(this.tc, 0);
				this.tc.style.visibility = "hidden";
			}
			if (abobj = window[l49.l20 + "l35"]) {
				abobj.style.visibility = "hidden";
			}
			eval(l49.l74);
		}
		if (l49.l52) {
			window[l49.l52 + "_hl"].style.visibility = "hidden";
			l49.l52 = null;
		}
	}
}
function l53(l54, top) {
	this.l55 = window[l54.id + "_hl"];
	if ((this.l49 = l44(l54)).l52 != l54.id) {
		if ((l87) && (l87.l25 != l54.l25)) {
			l46_hl(l44(l87));
		}
		l46_hl(this.l49, top);
		if (top) {
			this.l55.style.width = this.l55.parentElement.offsetWidth + "px";
			this.l55.style.height = this.l55.parentElement.offsetHeight + "px";
			l76(this.l55, this.l49);
			l87 = l54;
			if (l56 = l54.cdd_status) {
				status = l56;
				l85 = 1;
			} else {
				l64();
			}
			if ((l88) && (l88.id != l87.l20 + "_pointer")) {
				l65();
			}
		}
		if (parseInt(this.l55.cdd_hl)) {
			this.l55.style.visibility = "visible";
		}
		this.l49.l52 = l54.id;
	}
	if (!this.l49.l51) {
		new l53(window[this.l49.l20]);
	}
}
function l46_hl(l49, l39_forward) {
	if (l49.l52) {
		if ((l39_forward) && (nobj = window[l49.l52 + "_menu"])) {
			new l46_hl(nobj, l39_forward);
		}
		window[l49.l52 + "_hl"].style.visibility = "hidden";
		l49.l52 = null;
	}
}
function l83(e) {
	l82(e, 1);
}
function l82(e, click) {
	clearTimeout(l89);
	l59 = e.srcElement;
	do {
		if (niq = l59.l19) {
			if (niq > 0) {
				if (sid = l59.l36) {
					l59 = window["cdd_item" + sid];
				}
				l53(l59, 1);
				if (!click) {
					click = 0;
				}
				l89 = setTimeout("l71(" + click + ",window[l59.id+'_menu'],l59,l44(l59))", l0);
			}
			if (l60 = window[l59.l20 + "_pointer"]) {
				l49 = l44(l59);
				l61 = l78(l49, 1);
				l62 = l78(l49);
				spt = document.body.scrollTop;
				spl = document.body.scrollLeft;
				if (parseInt(l49.l18)) {
					l66(l60, l49, e.clientX, l61[0], l62[0], l62[1], "left", "top", spl, spt, "Width", "Height");
				} else {
					l66(l60, l49, e.clientY, l61[1], l62[1], l62[0], "top", "left", spt, spl, "Height", "Width");
				}
				if (l88 != l60) {
					l65();
				}
				l60.style.visibility = "visible";
				l88 = l60;
			} else {
				l65();
			}
			return;
		}
	} while (l59 = l59.parentElement);
	l89 = setTimeout("l71()", l0);
	if (l87) {
		l46_hl(l44(l87));
	}
	l65();
	l64();
}
function l64() {
	if (l85) {
		status = "";
		l85 = 0;
	}
}
function l65(l79) {
	if (l88) {
		l88.style.visibility = "hidden";
	}
}
function l66(l60, l49, cx, l61, l62, l63, s1, s2, l67, l68, l69, l70) {
	l60.style[s1] = (cx - l61 + l62) - (parseInt(l60["offset" + l69] / 2)) + l67 + "px";
	bp = parseInt(l49.style.borderWidth);
	if (parseInt(l60.cdd_br)) {
		l60.style[s2] = (l63 + l49["offset" + l70]) - bp + "px";
	} else {
		l60.style[s2] = (l63 - l60["offset" + l70]) - bp + "px";
	}
}
function l71(click, l48, l72, call_menu) {
	if ((l1) && (!click) && (!l84)) {
		return;
	}
	if (l86 != null) {
		l46(l86, call_menu, l48);
	}
	if ((l48) && ((tc = l48.parentElement).style.visibility == "hidden")) {
		eval(l48.l73);
		l76(l48);
		l48.stopf = 0;
		tco = l78(l72);
		tbo = parseInt(l72.style.borderWidth);
		tc.style.left = parseInt(l72.l23) + l72.offsetWidth + tco[0] - tbo + "px";
		tc.style.top = parseInt(l72.l24) + l72.offsetHeight + tco[1] - tbo + "px";
		tc.style.width = l48.offsetWidth;
		tc.style.height = l48.offsetHeight;
		if (parseInt(tc.l109)) {
			tc.l110 = "top";
			if ((tc.l109 == 1) || (tc.l109 == 3)) {
				tc.l104 = -l48.offsetHeight;
				if (tc.l109 == 3) {
					tc.l104 = l48.offsetHeight;
				}
			} else {
				tc.l110 = "left";
				tc.l104 = -l48.offsetWidth;
				if (tc.l109 == 2) {
					tc.l104 = l48.offsetWidth;
				}
			}
			tc.l105_off = tc.l104;
			tc.l105 = 0;
			l106(tc, 1);
		}
		iesf(tc, 1);
		tc.style.visibility = "visible";
		l86 = l48;
		l84 = 1;
		if (l54 = window[l72.id + "l35"]) {
			l54.style.visibility = "visible";
		}
	}
}
function l106(w_obj, is_show) {
	this.l32 = parseInt(w_obj.m_step);
	this.l103 = w_obj.children[0].style;
	if ((w_obj.l104 > w_obj.l105 + this.l32) || (w_obj.l104 < w_obj.l105 - this.l32)) {
		if (w_obj.l104 > w_obj.l105) {
			this.l32 = -this.l32;
		}
		w_obj.l104 += this.l32;
		this.l103[w_obj.l110] = w_obj.l104;
		setTimeout("l106(window." + w_obj.id + "," + is_show + ")", parseInt(w_obj.l107));
	} else {
		w_obj.l104 = w_obj.l105;
		this.l103[w_obj.l110] = w_obj.l105;
		w_obj.l108 = 0;
		if (!is_show) {
			iesf(w_obj, 0);
			w_obj.style.visibility = "hidden";
		}
	}
}
function l76(l75, l47) {
	try {
		if ((l47) && (l77 = l47.filters[0]) && (!l47.l51) && (!l47.stopf)) {
			l47.stopf = 1;
			l77.stop();
		}
		if (l77 = l75.filters[0]) {
			l77.apply();
			l77.play();
		}
	}
	catch (e) {
	}
}
function l78(l79, l80) {
	rc = new Array(0, 0);
	do {
		rc[0] += l79.offsetLeft + l79.clientLeft;
		rc[1] += l79.offsetTop + l79.clientTop;
	} while (((l79 = l79.offsetParent) && (l79 != document.body)) && !(!l80 && !l79.cdd_isacontainer && !l79.l19 && (l79.style.position == "absolute" || l79.style.position == "relative")));
	return rc;
}
function get_l80_path(fname, l12) {
	if (fname.indexOf(":") > -1) {
		return fname;
	} else {
		if (window.cdd__is_live && (riv = window["cdd__include_codebase" + l12])) {
			return riv + fname;
		} else {
			return window["cdd__codebase" + l12] + fname;
		}
	}
}

