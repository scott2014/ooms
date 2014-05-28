$(function(){
 //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失
 //当滚动条的位置处于距顶部500像素以下时，左部导航出现，否则消失
  $(function () {
		$(window).scroll(function(){
			if ($(window).scrollTop()>100){
				$("#top").find(".reTopWrap").show();
				$('.right-tool').addClass("fixed");
					}
			else{
				$("#top").find(".reTopWrap").hide();
				$('.right-tool').removeClass("fixed");
				};
			if ($(window).scrollTop()>160){	
				$(".classNav").addClass("fixed");
				$(".classSudio").addClass("fixed");
				$(".studio-body").addClass("fixed");
				$("#nav").addClass("fixed");
					}
			else{
				$(".classNav").removeClass("fixed");
				$(".classSudio").removeClass("fixed");
				$(".studio-body").removeClass("fixed");	
				$("#nav").removeClass("fixed");
				}; 
		});
//当点击跳转链接后，回到页面顶部位置
$("#top").find(".reTopWrap").click(function(){
	$('body,html').animate({scrollTop:0},500);
		return false;
			});
	});
});