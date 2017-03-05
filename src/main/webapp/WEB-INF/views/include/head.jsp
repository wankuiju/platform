<%@ page contentType="text/html;charset=UTF-8" %><meta http-equiv="Content-Type" content="text/html;charset=utf-8" /><meta name="author" content="http://jeesite.com/"/>
<meta name="renderer" content="webkit"><meta http-equiv="X-UA-Compatible" content="IE=8,IE=9,IE=10" />
<meta http-equiv="Expires" content="0"><meta http-equiv="Cache-Control" content="no-cache"><meta http-equiv="Cache-Control" content="no-store">

<!-- jquery -->
<script src="${ctxStatic}/plugins/jQuery/jquery-2.2.3.min.js" type="text/javascript"></script>

<!-- bootstrap -->
<link href="${ctxStatic}/common/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<script src="${ctxStatic}/common/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="${ctxStatic}/common/ionicons.min.css" type="text/css" rel="stylesheet" />

<!-- font awesome -->
<link href="${ctxStatic}/common/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />

<!-- adminlte -->
<link href="${ctxStatic}/common/adminlte/css/skins/skin-${not empty cookie.theme.value ? cookie.theme.value : 'blue'}.min.css" type="text/css" rel="stylesheet" />
<link href="${ctxStatic}/common/adminlte/css/AdminLTE.min.css" type="text/css" rel="stylesheet" />
<script src="${ctxStatic}/common/adminlte/js/app.min.js" type="text/javascript"></script>

<!-- select2 -->
<link href="${ctxStatic}/plugins/select2/select2.min.css" rel="stylesheet" />
<script src="${ctxStatic}/plugins/select2/select2.min.js" type="text/javascript"></script>

<!-- jquery-validation -->
<link href="${ctxStatic}/plugins/jquery-validation/jquery.validate.min.css" type="text/css" rel="stylesheet" />
<script src="${ctxStatic}/plugins/jquery-validation/jquery.validate.min.js" type="text/javascript"></script>

<!-- js模板引擎 -->
<script src="${ctxStatic}/common/mustache.min.js" type="text/javascript"></script>

<!-- jeesite框架 -->
<!--<link href="${ctxStatic}/common/jeesite.css" type="text/css" rel="stylesheet" />-->
<script src="${ctxStatic}/common/jeesite.js" type="text/javascript"></script>

<script type="text/javascript">var ctx = '${ctx}', ctxStatic='${ctxStatic}';</script>