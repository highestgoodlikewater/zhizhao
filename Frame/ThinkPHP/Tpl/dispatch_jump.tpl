<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>跳转提示</title>
<style type="text/css">
	/*CSS reset*/
    html, body, div, h1, h2, h3, h4, h5, h6, p, td, tr, ul, ol, li, table, dl, dd, dt, img, form { margin:0; padding:0 }
    body { font-family:'微软雅黑'; font-size:12px; line-height:180%;}
    table { border-collapse:collapse; border-spacing:0; border:0; padding:0; margin:0 }
	img { border:none; }
    ol, ul, li { list-style:none }
	caption, th { text-decoration:none; }
    :focus { outline:none;}
    a:link,
    a:visited,
    a:active { color:#005DC6; text-decoration:none;}
    a:hover { color:#646464;}

	/* 自定义样式 */
    body { background:#FFF;}
    .systemBox { width:370px; height:120px; padding:10px; background:#F8F8F8; border:1px #DBDBDB solid; position:absolute; left:50%; top:20%; margin:0 0 0 -200px;}
    .content { padding:10px 10px 10px 70px; height:100px;}
    .content .text { font-size:15px; line-height:24px; font-weight:bold; text-align:center; font-family: "Century Gothic","Microsoft yahei";}
    .success { background:#FFFFFF url(__ROOT__/Frame/ThinkPHP/Tpl/success.png) no-repeat 5px 5px;}

    .warning { background:#FFFFFF url(__ROOT__/Frame/ThinkPHP/Tpl/warning.png) no-repeat 5px 5px;}
    .jump { text-align:center; border-top:1px #DBDBDB dotted; line-height:24px; padding-top:10px;}
    #wait { font-size:15px; font-weight:bold;}
</style>
</head>
<body>
<div class="systemBox">
    <present name="message">
        <div class="content success">
            <div class="text"><?php echo($message); ?></div>
            <div class="jump">
            	<p>页面将在 <b id="wait"><?php echo($waitSecond); ?></b> 秒后自动跳转</p>
                <p>您也可以 <a id="href" href="<?php echo($jumpUrl); ?>">点击这里</a>，直接跳转至下一个页面。</p>
            </div>
        </div>
    <else/>
        <div class="content warning">
            <div class="text"><?php echo($error); ?></div>
            <div class="jump">
            	<p>页面将在 <b id="wait"><?php echo($waitSecond); ?></b> 秒后自动跳转</p>
                <p>您也可以 <a id="href" href="<?php echo($jumpUrl); ?>">点击这里</a>，直接跳转至下一个页面。</p>
            </div>
        </div>
    </present>
</div>
<script type="text/javascript">
(function(){
var wait = document.getElementById('wait'),href = document.getElementById('href').href;
var interval = setInterval(function(){
	var time = --wait.innerHTML;
	if(time == 0) {
		location.href = href;
		clearInterval(interval);
	};
}, 1000);
})();
</script>
</body>
</html>