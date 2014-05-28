$(function() {
	login.login();
});

var login = {
	login : function() {
		$("#login_btn").bind("click",function() {
			var loginStr = $("#login_username").val();
			$("label[for='login_username']").append("<div for=\"login_username\" class=\"logreg-error\">请填写用户名</div>");
			$("#login_username").addClass("logreg-error");
		});
	}
};