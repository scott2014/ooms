// JavaScript Document

$(document).ready(function(){
	
	if($.cookie('skguser') == null) {
		$('.loginBar').show();
	}
	
	$(".loginBarDe").click(function(){
		$(".loginBar").hide();
		});
	
	liAct($(".mainDown ul li"));
	liActRightRecommend($(".recommendConLeft ul li"));
	liActRightRecommend($(".recommendConRight"));
	})

	
function liAct(obj){
		obj.hover(function(){
		
		$(this).addClass("liActive").find(".collectionsActive").show();
		},function(){
			$(this).removeClass("liActive").find(".collectionsActive").hide();
			})
	}

function liActRightRecommend(obj){
	obj.hover(function(){
	
	$(this).find(".collectionsActive").show();
	},function(){
		$(this).find(".collectionsActive").hide();
		})
}
