$(function() {
	meal.add();
	meal.addShop();
	meal.addCategory();
});


var meal = {
	add : function() {
		$("#tijiao").bind("click",function() {
			var name = $("input[name='meal.name']").val();
			var price = $("input[name='meal.price']").val();
			var roomCosts = $("input[name='meal.roomCosts']").val();
			var description = $("input[name='meal.description']").val();
			var shopId = $("select[name='meal.shopId']").val();
			var categoryId = $("select[name='meal.categoryId']").val();
		
			
			if (name.trim() == '') {
				$("#name_tip").html("*快餐名称不能为空");
				$("input[name='meal.name']").focus();
				return;
			} else {
				$("#name_tip").html("");
			}
			
			if (price.trim() == '') {
				$("#price_tip").html("*快餐价格不能为空");
				$("input[name='meal.price']").focus();
				return;
			} else {
				$("#price_tip").html("");
			}
			
			if (isNaN(price)) {
				$("#price_tip").html("*必须为数字");
				$("input[name='meal.price']").focus();
				return;
			} else {
				$("#price_tip").html("");
			}
			
			if (roomCosts.trim() == '') {
				$("#roomCosts_tip").html("*送餐费用不能为空");
				$("input[name='meal.roomCosts']").focus();
				return;
			} else {
				$("#roomCosts_tip").html("");
			}
			
			if (isNaN(roomCosts)) {
				$("#roomCosts_tip").html("*必须为数字");
				$("input[name='meal.roomCosts']").focus();
				return;
			} else {
				$("#roomCosts_tip").html("");
			}
			
			if (description.trim() == '') {
				$("#desc_tip").html("*描述不能为空");
				$("input[name='meal.description']").focus();
				return;
			} else {
				$("#desc_tip").html("");
			}
			
			
			
			var shopName = $("#shopName").val();
			var categoryName = $("#categoryName").val();
			
			var flag = false;
			var tip = "";
			if (shopName == undefined && shopId != undefined && shopId == "-1") {
				tip += "没有选择任何店铺名称\n"
			    flag = true;
			}
			if (categoryName == undefined && categoryId != undefined && categoryId == "-1") {
				tip += "没有选择任何菜系名称\n"
			    flag = true;
			}
			if (flag) {
					tip += "将使用默认名称\n依然提交吗？";
						var ok = window.confirm(tip);
			
					if (ok) {
						$("#form").submit();
					}
				} else {
					$("#form").submit();
			}
		
		});
	},
	addShop : function() {
		$("#shop_select").live("change",function() {
			var index = $(this).val();
			if (index == "-2") {
				$(this).parent().html("<input type='text' name='meal.shopName' id='shopName'/>");
				$("#shopName").focus();
				
				var select_html = $("#shop_select_box").html();
				
				$("#shopName").unbind("blur").bind("blur",function() {
					var value = $(this).val().trim();
					if (value == "") {
						$(this).parent().html(select_html);
					}
				});
			}
		});
	},
	addCategory : function() {
		$("#category_select").live("change",function() {
			var index = $(this).val();
			if (index == "-2") {
				$(this).parent().html("<input type='text' name='meal.categoryName' id='categoryName'/>");
				$("#categoryName").focus();
				
				var select_html = $("#category_select_box").html();
				
				$("#categoryName").unbind("blur").bind("blur",function() {
					var value = $(this).val().trim();
					if (value == "") {
						$(this).parent().html(select_html);
					}
				});
			}
		});
	}
};