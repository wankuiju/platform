<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>${fns:getConfig('productName')} 登录</title>
	<meta name="decorator" content="blank"/>
	<style type="text/css">
		html,body,table{background-color:#f5f5f5;width:100%;text-align:center;}
		.form-signin-heading{font-family:Helvetica, Georgia, Arial, sans-serif, 黑体;font-size:36px;margin-bottom:20px;}
		.form-signin{position:relative;text-align:left;width:370px; height:auto;padding:25px 29px 29px;margin:0 auto 20px;border:1px solid #e5e5e5;
      		-webkit-box-shadow:0 1px 2px rgba(0,0,0,.05);-moz-box-shadow:0 1px 2px rgba(0,0,0,.05);box-shadow:0 1px 2px rgba(0,0,0,.05);}
		.form-signin .btn.btn-large{font-size:18px; width:40%; float: left;} 
		.form-signin #themeSwitch{position:absolute;right:15px;bottom:10px;display:none;}
		.form-signin div.validateCode {padding-bottom:15px;} 
		.mid{vertical-align:middle;}
		.header{height:80px;padding-top:20px;} 
		.alert{position:relative;width:300px;margin:0 auto;*padding-bottom:0px;}
		label.error{background:none;width:270px;font-weight:normal;color:inherit;margin:0;}
		.rememberMe{margin:10px auto 0px; }
		.input-group{padding-bottom: 20px;}
    </style>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#loginForm").validate({
				rules: {
					validateCode: {remote: "${pageContext.request.contextPath}/servlet/validateCodeServlet"}
				},
				messages: {
					username: {required: "请填写用户名."},password: {required: "请填写密码."},
					validateCode: {remote: "验证码不正确.", required: "请填写验证码."}
				},
				errorLabelContainer: "#messageBox",
				errorPlacement: function(error, element) {
					error.appendTo($("#loginError").parent());
				} 
			});
		});
		// 如果在框架或在对话框中，则弹出提示并跳转到首页
		if(self.frameElement && self.frameElement.tagName == "IFRAME" || $('#left').length > 0 || $('.jbox').length > 0){
			alert('未登录或登录超时。请重新登录，谢谢！');
			top.location = "${ctx}";
		}
	</script>
</head>
<body>
	<!--[if lte IE 6]><br/><div class='alert alert-block' style="text-align:left;padding-bottom:10px;"><a class="close" data-dismiss="alert">x</a><h4>温馨提示：</h4><p>你使用的浏览器版本过低。为了获得更好的浏览体验，我们强烈建议您 <a href="http://browsehappy.com" target="_blank">升级</a> 到最新版本的IE浏览器，或者使用较新版本的 Chrome、Firefox、Safari 等。</p></div><![endif]-->
	<div class="header">
		<div id="messageBox" class="alert alert-warning alert-dismissible ${empty message ? 'hide' : ''}">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<label id="loginError" class="error">${message}</label>
		</div>
		
	</div>
	<h1 class="form-signin-heading">${fns:getConfig('productName')}</h1>
	<form id="loginForm" class="form-signin" action="${ctx}/login" method="post">
		<div class="input-group">
          <input type="text" id="username" name="username" class="form-control required" placeholder="请输入登录名"  value="${username}">
          <span class="input-group-addon"><i class="fa fa-user"></i></span>
        </div>
        <div class="input-group">
          <input type="password" id="password" name="password" class="form-control required" placeholder="请输入登录密码">
          <span class="input-group-addon"><i class="fa fa-lock"></i></span>
        </div>
		<c:if test="${isValidateCodeLogin}"><div class="validateCode">
			<label class="input-label mid" for="validateCode">验证码</label>
			<sys:validateCode name="validateCode" inputCssStyle="margin-bottom:0;"/>
		</div></c:if>
		<div class="signin-group">
			<input class="btn btn-large btn-primary btn-signin" type="submit" value="登 录"/>&nbsp;&nbsp;
			<label for="rememberMe" title="下次不需要再登录" class="rememberMe">
				<input type="checkbox" id="rememberMe" name="rememberMe" ${rememberMe ? 'checked' : ''}/> 记住我（公共场所慎用）
			</label>
		</div>
		<!-- 暂时隐藏 -->		
		<div id="themeSwitch" class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">${fns:getDictLabel(cookie.theme.value,'theme','默认主题')}<b class="caret"></b></a>
			<ul class="dropdown-menu">
			  <c:forEach items="${fns:getDictList('theme')}" var="dict"><li><a href="#" onclick="location='${pageContext.request.contextPath}/theme/${dict.value}?url='+location.href">${dict.label}</a></li></c:forEach>
			</ul>
		</div>
	</form>
	<div class="footer">
		Copyright &copy; 2012-${fns:getConfig('copyrightYear')} <a href="${pageContext.request.contextPath}${fns:getFrontPath()}">${fns:getConfig('productName')}</a> - Powered By <a href="http://jeesite.com" target="_blank">JeeSite</a> ${fns:getConfig('version')} 
	</div>
</body>
</html>