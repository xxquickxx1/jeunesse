WYMeditor.SKINS.refinery={init:function(o){$(o._box).find(o._options.toolsSelector).addClass("wym_buttons"),$(o._box).find("div.wym_area_right ul").parents("div.wym_area_right").show().parents(o._options.boxSelector).find("div.wym_area_main").css({"margin-right":"155px"}),$(o._box).find("div.wym_area_left ul").parents("div.wym_area_left").show().parents(o._options.boxSelector).find("div.wym_area_main").css({"margin-left":"155px"}),$(o._box).find(".wym_section").hover(function(){$(this).addClass("hover")},function(){$(this).removeClass("hover")}),$(o._box).find(".wym_tools_class").hover($.proxy(function(){this.toggleClassSelector()},o),$.proxy(function(){this.toggleClassSelector()},o)),$(".wym_skin_refinery").animate({opacity:1},800)}};