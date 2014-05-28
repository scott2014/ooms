
$(document).ready(function() {
lazyLoadImg();

	setTimeout("lazyLoadImg()", 6000);

	C('.lazy-img img:not(".ST-uLi-loaded")',true).run('lazyimg',{
		'DefImg' : getRootPath() + '/assets/customer/img/blank.png',
		'Attr' : 'data-src'

	});
});

function lazyLoadImg() {
	$(".lazy-img-loader").each(function(){
		var that = $(this);
		var img = $("img", that);
		var src = img.attr("data-src");
		if (src !== undefined && src !== '') {
			src = $.mz.decodeTbUrl(src);
		}
		if(src == null || src.indexOf("http://") != 0) {
			src = "http://www.shikuaigou.com:80/assets/customer/img/blank.png";
			img.hide().css("width","50px").attr("src", src);
		} 
		else {
			img.hide().attr("src", src);
		}
		img.load(function(){
			if (this.complete) {
				that.removeClass("lazy-img-loader");
				img.fadeIn().attr("data-src","");;
			}
		});
	});
}

// CJS lazyimg
(function($) {
	$.C = {};
	$.extend($.C,{
		_method : {
			setConfig : function( name , val){
				if(typeof name === 'string'){ 
					this.s[name] = val;
					return [name ,val];
				}
				for(var i in name)
					this.s[i] = name[i];
				return this.s;
			},
			getConfig : function( name ){
				if(typeof name === 'string')
					return this.s[name];
				return this.s;
			},
			rerun : function( con ){
				$.extend(this.s,con);
				this.m.init();
				return this.s;
			}
		}
	});

	// core 
	window.C = C = function( selector, domselect ){
		return new C.fn.init( selector, domselect );
	};

	C.fn = C.prototype = {
		init : function( selector, domselect ){
			this.selector = selector;
			if(typeof selector === 'string' && !domselect){
				this.val = this.selector;
				this.typeis = 'string';
			}
			if(typeof selector === 'object'){
				this.val = this.selector;
				this.typeis = 'data';
			}
			if(Object.prototype.toString.apply(selector) === '[object Array]'){
				this.val = this.selector;
				this.typeis = 'array';
			}
			if(selector instanceof Date === true){
				this.val = this.selector;
				this.typeis = 'date';
			}

			if(domselect) return $(selector);
			return this;
		},
		extend : function( ext ){
			for(var i in ext)
				C.fn[i] = ext[i];
		},
		include : function( ext ){
			for(var i in ext)
				C[i] = ext[i];
		}
	};
	C.fn.init.prototype = C.fn;

	C.fn.include({
		loadedList : '', 
		rely : '',
		getinfo : function(mod){
			for(var j in C.registry)
				for(var k in C.registry[j])
					if(k == mod)
						return [j,k,C.registry[j][k]];
		}
	});

	// 对象操作
	$.fn.extend({
		run : function(func,con){
			return new $.C[ C.getinfo(func)[0] ][func]($(this),con);
		}
	});

	// 注册组件
	C.fn.include({
		registry : {
			utility : {
				lazyimg : 'js',
				wrapper : 'js,css'
			},
			ext : {
				string : 'js'
			}
		}
	});

})(jQuery);

$.C.utility = {};


(function($) {
	// lazyimg //图片较晚加载
	$.extend($.C.utility, {
		lazyimg : function(o) {
			$.C.utility.lazyimg.defaults = {
				'Container' : o ? o : $('.obj-U-lazyimg'),							//需要懒惰载入的图片对象
					//默认的图像
																//储存图像地址的属性名
				'Advance' : 300,													//预先载入图片的阀值
				Furl : function(url){}												//预处理url的函数
			};
			
			var setting = arguments[1] || {},
				s = this.s = $.extend({},$.C.utility.lazyimg.defaults,setting),
				c = this.c = s.Container,
				imgX,imgY,that,winB,winL,winR,winT,
				unloadImg,a,img;

			var m = this.m = {
				init : function (){
					c.attr('src',s.DefImg);
					m.getViewImg();

					// Event
					$(window).scroll(function(){
						m.getViewImg();
					});
					$(window).resize(function(){
						m.getViewImg();
					});
				},
				getViewImg : function(){
					winT = $(window).scrollTop();
					winB = winT+$(window).height();
					winL = $(window).scrollLeft()+$(window).width();

					unloadImg = c.not('.ST-uLi-loaded');
					unloadImg.each(function(){
						that = $(this);
						imgX = that.offset().left;
						imgY = that.offset().top;
						if( imgY < winB+s.Advance && (imgY+that.height()) > winT )
							m.loadImg(that);
					});
				},
				loadImg : function(_o){
					_o.hide();
					src = s.Furl(_o.attr(s.Attr)) || _o.attr(s.Attr);
					if(src == null || src.indexOf("http://") != 0) {
						src = "http://www.shikuaigou.com:80/assets/customer/img/blank.png";
					}
					_o.attr('src', src );
					_o.addClass("ST-uLi-loaded");
					_o.fadeIn(800);
				}
			};
			m.init();
		}
	});

	$.C.utility.lazyimg.prototype = $.C.utility._method;
})(jQuery);


