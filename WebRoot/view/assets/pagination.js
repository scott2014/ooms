$(function(){
	var pagerStr = generatePager();
	$('.pagination').html(pagerStr);
	
	//对于 指向 /default/all/1  的链接 全部更改为首页链接
	var href = getRootPath()+"/default/all/1";
	//$("a[href='" + href + "']").attr("href",getRootPath());
});
		
function generatePager() {		
		var pageNum = parseInt($('#pageNum').val());
		var pageSize = parseInt($('#pageSize').val());
		var pageCount = parseInt($('#pageCount').val());
		//var url = $('#pageUrl').val();
		var url =  obtainProperty.getPaginationBaseHref() + "/";
		var pageStr = "";

		if(pageCount <= 8 && pageCount > 1) {
			if(pageNum == 1) {
				pageStr += "<span class='disabled'>上一页</span>";
			} else {
				pageStr += "<a href='" + url + (pageNum-1) + "'>上一页</a>";
			}

			for(var i = 1; i <= pageCount; i++) {
				if(i == pageNum) {
					pageStr += "<span class='current'>" + i + "</span>";
				} else {
					pageStr += "<a href='" + url + i + "'>" + i + "</a>";
				}
			}

			if(pageNum == pageCount) {
				pageStr += "<span class='disabled'>下一页</span>";
			} else {
				pageStr += "<a href='" + url + (pageNum+1) + "'>下一页</a>";
			}

			pageStr += "<span class='enhanced_tip'>&nbsp</span>";
		} else if(pageCount >= 9) {
			if(pageNum == 1) {
				pageStr += "<span class='disabled'>上一页</span>";
			} else {
				pageStr += "<a href='" + url + (pageNum-1) + "'>上一页</a>";
			}

			var start = 1;

			if(pageNum > 5) {
			start = pageNum - 1;
				pageStr += "<a href='" + url + "1" + "'>" + 1 + "</a>";
				pageStr += "<a href='" + url + "2" + "'>" + 2 + "</a>";
				pageStr += "<a href='" + url + "3" + "'>" + 3 + "</a>";
				pageStr += "<span class='ombit'>...</span>";
			}

			var end = pageNum + 1;
			if(end > pageCount) {
				end = pageCount;
			}

			for(var i = start; i <= end; i++) {
				if(pageNum == i) {
					pageStr += "<span class='current'>" + i + "</span>";
				} else {
					pageStr += "<a href='" + url + i + "'>" + i + "</a>";
				}
			}

			if (end < pageCount - 2) {
				pageStr += "<span class='ombit'>...</span>";
			}

			if(end < pageCount) {
				pageStr += "<a href='" + url + pageCount + "'>" + pageCount + "</a>";
			}

			if(pageNum == pageCount) {
				pageStr += "<span class='disabled'>下一页</span>";
			} else {
				pageStr += "<a href='" + url + (pageNum+1) + "'>下一页</a>";
				pageStr += "<span class='enhanced_tip'>&nbsp</span>\n";
			}
		}
		return pageStr;
}
