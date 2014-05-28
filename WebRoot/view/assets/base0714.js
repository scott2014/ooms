$(document).ready(function() {
	hightlightCurrent.init();
	
	var userNameStr = $.cookie('skguser');
	if(null != userNameStr && userNameStr != ''){		
		var userNameObj = jQuery.parseJSON(userNameStr);
		$(".topLeft ul").html('<li>欢迎您，<a href="'+getRootPath()+'/account">'+userNameObj.userName+' </a></li><li><a href="'+getRootPath()+'/customer/logoutAction.action">退出</a></li>');
	}	
	registration.init();
	favorite.init();
	
});

var hightlightCurrent = {
	init: function() {
		this.hightlightSection();
		this.hightlightCategory();
		this.randHref();
		
	},
	
	hightlightSection: function() {
		$('#'+obtainProperty.getCurrentSectionForHighlight()).addClass('actived');

	},
	
	hightlightCategory: function() {	
		/**
		 * 当在tagList商品列表页面时，当前分类从页面隐藏input元素获取
		 * 否则，根据URL来判断
		 */
		if(window.top.location.href.indexOf("/tag/") > -1) {
			
			$('#'+ $('#categoryName').val()).removeClass('menuWrap').addClass('activeT');
			
		} else {
			$('#'+obtainProperty.getCurrentCategory()).removeClass('menuWrap').addClass('activeT');
		}
	},
	
	randHref: function() {
		var rand = Math.random();
		$('.rushBuy,.toRush,.go-taobao').each(function(){
			href=$(this).attr("href");
			
			if(href == null || href.length == 0 || href.indexOf("javascript") > -1) return;
			else if(href.indexOf("?") > -1) {
				$(this).attr("href",href+"&sid="+rand);
			} else {
				$(this).attr("href",href+"?sid="+rand);
			}
			});
		$('.buyOut').each(function(){
			href=$(this).attr("href");
			
			if(href == null || href.length == 0 || href.indexOf("javascript") > -1) return;
			else if(href.indexOf("?") > -1) {
				$(this).attr("href",href+"&sid="+rand);
			} else {
				$(this).attr("href",href+"?sid="+rand);
			}
			});
		
	}
};

var  obtainProperty = {
		
	init : function() {
		
	},
	
	getCurrentSectionForHighlight  : function() {
		var currentHref = window.top.location.href;
		var sectionList = ["/9k9","/19k9","/tomorrow","/broadcast","/topSale","/live"];
		var sectionListCat = ["/fuzhuang","/xiebao","/meishi","/jujia"];
		for(var tmp in sectionList) {
			if(currentHref.indexOf(sectionList[tmp]) > -1) {
				return sectionList[tmp].substr(1);
			}
		}
		for(var tmp in sectionListCat) {
			if(currentHref.indexOf(sectionListCat[tmp]) > -1) {
				return "s"+sectionListCat[tmp].substr(1);
			}
		}
		return "default";
	},
	
	getCurrentSection  : function() {
		var currentHref = window.top.location.href;
		var sectionList = ["/9k9","/19k9","/tomorrow","/broadcast","/topSale","/live"];
		for(var tmp in sectionList) {
			if(currentHref.indexOf(sectionList[tmp]) > -1) {
				return sectionList[tmp].substr(1);
			}
		}
		return "default";
	},
	
	getCurrentCategory : function() {
		var currentHref = window.top.location.href;
		var categoryList = ["/fuzhuang","/xiebao","/meishi","/jujia","/shishang","/shuma","/qita"];
		for(var tmp in categoryList) {
			if(currentHref.indexOf(categoryList[tmp]) > -1) {
				return categoryList[tmp].substr(1);
			}
		}
		
		if(obtainProperty.getCurrentSection() == "tomorrow") {
			return "";
		} else {
			return "all";
		}
	},
	
	//获得tag商品列表的basePath
	getTagListBaseHref : function() {
		var parten = new RegExp("\/tag\/[0-9a-zA-Z_]{2,40}");
		var currentHref = window.top.location.href;
		return getRootPath() + parten.exec(currentHref);
	},
	
	//明日预告分页的baseHref是  getRootPath() +　"tomorrow", 后面不带其他版块的category
	getPaginationBaseHref : function() {
		if(window.top.location.href.indexOf('/tag/') > -1) {
			return obtainProperty.getTagListBaseHref();
		} else {
			return getRootPath() + "/" + obtainProperty.getCurrentSection() +  (obtainProperty.getCurrentSection() == "tomorrow" ? "" :( "/" + obtainProperty.getCurrentCategory()));
		}
	}
	
};
//扩展indexOf用以支持IE
if(!Array.indexOf)
{
    Array.prototype.indexOf = function(obj)
    {              
        for(var i=0; i<this.length; i++)
        {
            if(this[i]==obj)
            {
                return i;
            }
        }
        return -1;
    };
}
var registration={
		init:function(){
			registration.checkInStatus();
    		if($(".checkInSideBar .checkInBtn").length>0){
    			$(".checkInSideBar .checkInBtn").click(function(){
        			if($(".checkInSideBar .checkInBtn").text()=="已签到"){
                        return;			
      			}
    				var userNameStr = $.cookie('skguser');
    				if(null != userNameStr && userNameStr != ''){	
    					registration.showCheckIn();
    				}else{
    					location.href =getRootPath() +"/login";
    				}
    			});
    		}
			$(".navRight li:last").click(function(){
    			if($(".navRight li:last").children("a").children("span").text()=="已签到"){
                    return;			
  			}
				var userNameStr = $.cookie('skguser');
				if(null != userNameStr && userNameStr != ''){	
					registration.showCheckIn();
				}else{
					location.href =getRootPath() +"/login";
				}
			});
			$(".close").click(function(){
				$("#mask").hide();
				$("#checkIn").hide();
        		$(".navRight li:last").children("a").children("span").text("已签到");
        		if($(".checkInSideBar .checkInBtn").length>0){
        			$(".checkInSideBar .checkInBtn").text("已签到");
        		}
			});
		},
		showCheckIn:function(){
			$.ajax({
	            url : getRootPath() + '/customerajax/userCheck!checkIn.action',
	            cache : false, 
	            async : false,
	            type : "POST",
	            dataType : 'json',
	            success : function (data){
	            	if(data.errorCode ==""){
		            	$(".mainTip").children("b").text(data.checkInCredits);
		            	$("#checkIn .totalCredits").text(data.totalCredits);
		            	$("#checkIn .cpercent").text(data.cpercent);
		            	$("#checkIn .continuousDays").text(data.continuousDays);
		            	$("#checkIn .tomorrowCredits").text(data.tomorrowCredits);
						$("#mask").show();
						$("#checkIn").show();
	            	}
	            }
	        });
		},
		checkInStatus:function(){
			$.ajax({
	            url : getRootPath() + '/customerajax/userCheck!checkInSatus.action',
	            cache : false, 
	            async : false,
	            type : "POST",
	            dataType : 'json',
	            success : function (data){
	            	if(data.errorCode =="1000"){
	            		$(".navRight li:last").children("a").children("span").text("已签到");
	            		if($(".checkInSideBar .checkInBtn").length>0){
	            			$(".checkInSideBar .checkInBtn").text("已签到");
	            		}
	            	}
	            }
	        });
		}
};
var favorite={
		init:function(){
			$(".topRight .fav").click(function addFavorite(){    
			    if (document.all){    
			        try{    
			            window.external.addFavorite(window.location.href,document.title);    
			        }catch(e){    
			            alert( "加入收藏失败，请使用Ctrl+D进行添加" );    
			        }    			   
			    }else if (window.sidebar){    
			        window.sidebar.addPanel(document.title, window.location.href, "");    
			     }else{    
			        alert( "加入收藏失败，请使用Ctrl+D进行添加" );    
			    }    
			});
		}
};
function getRootPath(){
	return "http://localhost:8080/ooms";
}