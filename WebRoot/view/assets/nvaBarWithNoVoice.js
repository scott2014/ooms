// JavaScript Document


$(document).ready(function(){

	$(".menuBar ul li").hover(function(){
		$(this).find("div.menuWrap").animate({top:-60},"fast");
		},function(){
			$(this).find("div.menuWrap").animate({top:0},"fast");
			
			});
});




