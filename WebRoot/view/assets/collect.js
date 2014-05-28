$(function(){
	collectOperation.init();
	cookieOperation.init();
	highLightFavourites.init();
});

var collectOperation = {
		init : function() {
			$('.collectBtn').bind('click',function(){
				collectOperation.addFavouriteToDb($(this).attr("pid"));
				cookieOperation.addToCookie($(this).attr("pid"));
				$(this).parent().find('a').eq(3).removeClass('collectionActive').addClass('collectionActiveHeart');
				
			});
		},
		
		addFavouriteToDb : function(pid) {
			var userObjStr=$.cookie('skguser');
			var userObj = null;
			if(null != userObjStr) {
				userObj = jQuery.parseJSON(userObjStr);
			}
			if(userObj != null) {
				var params = {customerId: userObj.id, productId : pid};
				$.ajax({
					url : getRootPath() + "/customerajax/fav!addFavourite.action",
					cache: false,
					async: false,
					type: "POST",
					dataType : 'json',
					data: params,
					success:function(result) {
					}
				});
			}
			
		}
		
};

//未登录用户加入收藏至cookie，然后立即高亮所选择收藏
var cookieOperation = {
		
		collectHistory : [],
		
		init : function() {
			//检测喜欢历史是否存于coookie，若没有，新建一个空的
			var favHistoryString = $.cookie('favHistory');
			if(null == favHistoryString) {
				$.cookie('favHistory',JSON.stringify(cookieOperation.collectHistory),{expires: 7, path: '/'});
			}
			
		},
		
		addToCookie : function(productId) {
			cookieOperation.collectHistory = jQuery.parseJSON($.cookie('favHistory'));
			if(cookieOperation.collectHistory.indexOf(productId) == -1) {
					
				cookieOperation.collectHistory.push(productId);
				
				$.cookie('favHistory',JSON.stringify(cookieOperation.collectHistory),{expires: 7, path: '/'});
			}
		}
};

//高亮cookie已经喜欢的商品
var highLightFavourites = {
		collectHistory : [],
		
		init : function() {
			highLightFavourites.showLoveIcon();
		},
		
		showLoveIcon : function() {
			highLightFavourites.collectHistory = jQuery.parseJSON($.cookie('favHistory'));
			var productList = $('.mainDown ul li');
			var length = 0;
			if(null != productList){length = productList.length};
			for (var i = 0; i < length; i++) {
				if(highLightFavourites.collectHistory.indexOf($(productList[i]).find('a').eq(3).attr('pid')) > -1) {
					$(productList[i]).find('a').eq(3).addClass('collectionActiveHeart');
				}
			}
			
			var topRecommendLeftList = $('.recommendConLeft ul li');
			var leftLength = 0;
			if(null != topRecommendLeftList) {leftLength = topRecommendLeftList.length};
			for (var i = 0; i < length; i++) {
				if(highLightFavourites.collectHistory.indexOf($(topRecommendLeftList[i]).find('a').eq(3).attr('pid')) > -1) {
					$(topRecommendLeftList[i]).find('a').eq(3).addClass('collectionActiveHeart');
				}
			}
			
			if(highLightFavourites.collectHistory.indexOf($('.recommendConRight').find('a').eq(3).attr('pid')) > -1) {
				$('.recommendConRight').find('a').eq(3).addClass('collectionActiveHeart');
			}	
		}	
};