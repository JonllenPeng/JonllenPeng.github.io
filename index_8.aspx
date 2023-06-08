<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
	金龙之家
</title>
<link rel="search" type="application/opensearchdescription+xml" title="金龙博客" />
<link href="/styles/index/css/default/index.css" id="linkIndex" rel="stylesheet" type="text/css" />
<link href="/styles/index/css/default/template2.css" id="linkTemplate" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="/styles/index/scripts/ajax.js"></script>
</head>
<body>
<div id="toolbar">
	<div class="auto fixft" >
	    <a href="/" class="home"><span>首页</span><img alt="logo" src="/styles/index/css/default/images/logo_small.gif" /></a>
		
		<!--<form id="loginFrom" name="loginFrom" onsubmit="return loginEncrypt();" action="/User/Login.aspx"  method="post" target="loginIfr">
		    <input type="hidden" id="hdEncrypted" name="hdEncrypted" value="" />
		    <div class="login">
			    <span class="ico">用户名：</span>
			    <input id="username" name="username" onfocus="loadEncryptScript()" class="text" type="text" />
			    密码：<input id="password" name="password" onfocus="loadEncryptScript()" class="text" type="password" />
			    <input id="btnLogin" class="btn" type="submit" value="登录" />
			    
			    <a href="#" onclick="location='https://localhost/Passport';" >安全登录</a>
			    
		    </div>
		</form>
		<iframe id="loginIfr" name="loginIfr" scrolling="no" frameborder="0" width="0" height="0"></iframe>
        <script type="text/javascript">
            function loadEncryptScript(){
                if( typeof(encryptScript) == 'undefined') {
                    
                    document.getElementById('btnLogin').disabled = true;
                    
                    encryptScript = document.createElement('script');
                    encryptScript.type = 'text/javascript';
                    encryptScript.src = '/Ajax/RSAEncrypt.aspx?callback=loadEncryptScriptCallback';
                    var currScriptElem = document.getElementsByTagName('script')[0];
                    currScriptElem.parentNode.insertBefore(encryptScript, currScriptElem);
                }
            }
            function loadEncryptScriptCallback(){
                document.getElementById('btnLogin').disabled = false;
            }
            function loginEncrypt(){
                
                var pwdElem = document.getElementById('password');
                var encryptedPassword = RSAEncrypt(pwdElem.value);
                pwdElem.value = encryptedPassword;
                document.getElementById('hdEncrypted').value = 'RSA';
                return true;
            }
        </script>-->
		
		<div class="skin">
			<ul id="skinlist">
			    <li class="first">　切换风格：</li>
			    <li id="temp2" class="on"><a class="green" href="javascript:toggleTemplate(2, '/styles/index/css/default/index.css', false);"  title="切换风格：大自然绿">大自然绿</a></li><li id="temp3" class=""><a class="blue" href="javascript:toggleTemplate(3, '/styles/index/css/blue/index.css', false);"  title="切换风格：深蓝海">深蓝海</a></li><li id="temp4" class=""><a class="red" href="javascript:toggleTemplate(4, '/styles/index/css/guoqing/index.css', false);"  title="切换风格：国庆专题">国庆专题</a></li><li id="temp6" class=""><a class="christmas" href="javascript:toggleTemplate(6, '/styles/index/css/christmas/index.css', false);"  title="切换风格：圣诞节">圣诞节</a></li><li id="temp7" class=""><a class="simple" href="javascript:toggleTemplate(7, '/styles/index/css/simple/index.css', false);"  title="切换风格：简单线条">简单线条</a></li>
			</ul>
		</div>
		<div class="display">
		    <ul>
		        <li>　<!--版面：--></li>
		        <!--<li><a href="#" onclick="location='?display=1';" class="">左-中</a> | </li>
		        <li><a href="#" onclick="location='?display=2';" class="on">左-中-右</a> | </li>
		        <li><a href="#" onclick="location='?display=3';" class="">中-右</a> | </li>
		        <li><a href="#" onclick="location='?display=4';" class="">中</a></li>-->
		    </ul>
		</div>
	</div>
</div>
<div class="auto" id="top" style="" >
	<div class="title">
	    <h3></h3>
	    <h4></h4>
	</div>
</div>
<div class="auto" id="nav" >
	<ul id="navigation">
		<li><a href="/">首页</a></li>

<li><a href="/jonllen/work/"  >工作</a></li>
		<li><a class="up" href="/album/">相册</a></li>
		<li><a href="/leave/"><!--留言--></a></li>
		<li class="preview"></li>
	</ul>
</div>
<script type="text/javascript"> 
(function (){
    var select, navlist = document.getElementById('navigation').getElementsByTagName('li');
    for(var i=0;i<navlist.length;i++)
    {
        if ( navlist[i].className=='preview') continue;
        var link = navlist[i].getElementsByTagName('a')[0];
        if ( link && window.location.href.toLowerCase().indexOf(link.href.toLowerCase())>-1 )
        {
            select = link;
        }
    }
    if( select!=undefined )
    {
        select.parentNode.className = "on";
    }
})();
function toggleTemplate(tempId, skinSrc, additionalHtml){
    if( additionalHtml) {
        location='?tempid='+tempId;
        return true;
    }
    
    var linkIndexElem = document.getElementById('linkIndex');
    var linkIndexHref = '' + skinSrc;
    linkIndexElem.href = '';
    linkIndexElem.href = linkIndexHref;
    
    var linkTemplateElem = document.getElementById('linkTemplate');
    var linkTemplateHref = linkIndexHref.substr(0, linkIndexHref.lastIndexOf('/') ) + linkTemplateElem.href.substr(linkTemplateElem.href.lastIndexOf('/'));
    linkTemplateElem.href = '';
    linkTemplateElem.href = linkTemplateHref;
    
    var skinName = 'Skin';
    var skinValue = '0='+tempId;
    var skinDate = new Date();
    skinDate.setTime(skinDate.getTime() + 1000 * 60 * 120 );
    document.cookie = skinName + '=' + skinValue + '; path=/; expires=' + skinDate.toGMTString();
    
    var templatelist = document.getElementById('skinlist').getElementsByTagName('li');
    for(var i=0;i<templatelist.length;i++){
        var templateli = templatelist[i];
        if (templateli.className == 'on')
            templateli.className = '';
        if( templateli.id == 'temp' + tempId)
            templateli.className = 'on';
    }
}
</script>
<script type="text/javascript" src="/styles/index/scripts/Topic.js"></script>
<div id="main" class="auto container">
    <div id="ctl00_panLeft" class="siderLeft column column1">
	
<div id="mod25" class="mod info">
	<div class="head"><strong class="ico">个人档案</strong></div>
	<div class="cont">
		<dl>
			<dt><a href="/jonllen/"><img src="/upload/jonllen/upload/wolf.gif" defaultsrc="/styles/index/css/default/images/ico_default.gif" onerror="if(this.src.indexOf(this.getAttribute('defaultsrc'))==-1) this.src=this.getAttribute('defaultsrc');" /><br />jonllen</a></dt>
			<dd><a href="/breast/" class="profile">心情闪存</a> | <a href="/leave/" class="article">给他留言</a></dd>
			<!--<dd><a href="/rss.aspx" target="_blank" class="rss">RSS网志</a> | <a href="/profile.aspx" class="">个人档案</a></dd>-->
			<dd>妮称：jonllen</dd>
			<dd>来自：中国. 湖南. 湘潭</dd>
			<dd>简述：金龙，目前就职于一家软件公司，从事金融系统开发设计。
</dd>
		</dl>
	</div>
</div>
<div id="mod26" class="mod calendar">
	<div class="head"><strong class="ico">博客日历</strong></div>
	<div id="calendar" class="cont"></div>
	<script type="text/javascript" language="javascript" src="/styles/index/scripts/DatePicker/WdatePicker.js" ></script>
    <script type="text/javascript" language="javascript">
        function ePicked(dp)
        {
            for(var i=0;i<archive.length;i++)
            {
                //if(archive[i]==dp.cal.getDateStr())
                    //window.location = '/archive/' + dp.cal.getDateStr() + '.aspx';
            }
        }
        
            function getArticleArchive()
		    {
		        var url = "/plugin/web/getArticleArchive.do?coluidpath=&colutype=";		        		        
		        Ajax.send({
		            type : "GET",
		            url : url,
		            fn : function (data){
	                    var rs;
	                    try{rs=eval("rs="+data);}catch(e){alert(e);return;}
                        
	                    if (rs.success)
	                    {
	                        var archive = [];
	                        if(rs.data) archive = rs.data.split(',');
	                        window.archive = archive;
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'' } );
 	                    }else
	                    {
	                        alert(rs.error);
	                    }
                            }
		        });
		    }
        setTimeout(getArticleArchive,0);
    </script>
</div>
<div id="mod27" class="mod category">
	<div class="head"><strong class="ico">分类文档</strong></div>
	<div class="cont">
		<ul>

			
			        <li>
			            
			            <a href="/jonllen/" >
			                jonllen<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/pengfenjun/" >
			                pengfenjun<!-- (0)-->
			            </a>
			        </li>
			
		</ul>
	</div>
</div>
 
<div id="mod28" class="mod links">
	<div class="head"><strong class="ico">友情链接</strong></div>
	<div class="cont">
		<ul>
                    
		    <li><a href="http://www.thjy.org" title="天河部落教育博客" target="_blank">天河部落</a></li>
                    
		    <li><a href="http://weibo.com/zjj" title="时代财富张静君的微博" target="_blank">张静君</a></li>
                    
		</ul>
	</div>
</div>
 
</div>

	<div class="siderMiddle">
	    <div class="content column column2">
            
            
    
    <div id="ctl00_cphContent_palArticle" class="article">
	
		<div class="position title">
		    
		    <strong>我的文章</strong>
            
		</div>
		<div class="articlelist">
		    <div id="articleitem" class="articleitem">
                
                    

<div class="item">
			            
			            <h2><a href="/jonllen/js/16.aspx">tiny_mce在线编辑器内JavaScript实现Ctrl+S无刷新保存。</a></h2>
			            <!--<div class="date"><a href="">2009-06-26</a></div>-->
			            
			            <div class="summary">
			                以前也用过几个编辑器拉，如FCK，CUTEDTOR等，它们大都实现了很不错了的功能，也有丰富的插件使用。不过我还是觉得TinyMCE在线编辑器好用，它是采用纯JS客户端脚本技术构建，是一个轻量级加载速度非常快的WEB的文本编辑控件，并且TinyMCE是一个根据LGPL license发布的自由软件，你可以把它用于商业应用。
由于最进在做一个博客系统需要有在线编辑器，于是便找了TinyMCE在线编辑器，以前用过Google的GMail，里面就有一个按Ctrl+S的快捷键保存邮件的功能，因为当时还不太清楚那些编辑器的一些功能实现，对编辑器结构不清楚，也不知道用IE Developer Toolbar和Firebug等调试工具来看，所以那时候感觉Google特别牛B，而且Ctrl+S保存那个功能在FF里面运行，而FF浏览器按下Ctrl+S默认是弹出修改网页的对话框的，这让我更好奇了，难道JavaScript还能阻止浏览器里面Ctrl+S保存网页的快捷键，真的太神气了！下面我们就使用TinyMCE编辑器来实现一个按Ctrl+S使用Ajax异步保存文章的功能吧，这也是我的博客系统的需要...
			            </div>
			            <div class="tags">标签：JavaScript TinyMCE编辑器,JavaScript实现Ctrl+S保存
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-06-26 21:51:10</li>
				            <li>阅读(14182)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/js/16.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/26.aspx">门户网站的形成—CMS内容管理系统</a></h2>
			            <!--<div class="date"><a href="">2009-04-25</a></div>-->
			            
			            <div class="summary">
			                终于可以稍微停下来不用加班了，这是我进时代财富?过得最轻松的一个双休，总算是可以放下心来好好的调整一下。话说我三月份开始在时代财富公司上班，那怎一个忙字了得？别以为你是刚进公司新员工就要有一个适应环境的过程为由，工作上可以给你放宽一下，刚进公司Earth给我一个事例，是公司.Net框架的应用，因为我们公司是有自己的开发框架(Studio)，几乎所有项目都依赖此框架进行开发的，所以我进了这个公司第一件事就是了解整个框架的开发使用流程，大概花了半天时间来看，然后又花了约两天时间用此框架做一个产品及其分类的增删改查的简单例子，交工！感觉用起公司那个Studio框架还行，有自己的分页控件，用工具自动生成实体及基本增删改查类，使用反射DataTable来填充实体值并返回(泛型数组)，然后对数据库的访问是以接口的方式提供，即创建的所有ADO.Net对象都是使用接口根据Web.Config配置最终来决定实例化的子对象(SQLServer或Oracle数据访问对象),此种方式略有不同于PetShop的工厂模式，PetShop里有一层sealed类根据Web.Config配置来决定接口实例化子类(SQLServerDAL或OracleDAL),所有DAL都单独实现了接口里所有方法等，并是针对自身的差异来一一详细实现，如SQLServ
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-04-25 16:03:10</li>
				            <li>阅读(10190)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/26.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/21.aspx">.Net版(C#)的CMP模式(存储过程ORM)</a></h2>
			            <!--<div class="date"><a href="">2008-12-30</a></div>-->
			            
			            <div class="summary">
			                商城上线快2、3个月了，一直都懒得写点东西，在加上杂七杂八的事情也比较忙，所以都没有把这个系统当时做的整个架构思绪整理清，昨天才从深圳完了两天回来，怎感觉是要做的事来着.刚开始接触CMP模式的时候也是看了它几天,到谷歌百度里面一搜,我们博客园里面就有蛙蛙池塘的提高软件开发效率三板斧之二利用CMP模式一文里有它的详细介绍,在这里我自己也对这个用CMP模式拿来真正上项目时候的问题来做个总结.


项目描述:项目实现了商品的浏览筛选(主要是公司做的IT产品)、会员商品收藏、订购(订单)、发邮件推荐给朋友、会员积分、收货地址薄、DIY自主装机等,业务逻辑全部在本项目中用.NET(CMP)实现,而展示就不一定都是用.net的aspx页面来做,如DIY装机就是用Flex生成flash来实现的,但是它们都是同步的(同登陆同注销,包括会员产品收藏等).还有一个最重要的就是后台管理也是用Flex调用.net来实现的,由于要提供Flex调用的接口,所有还提供了几个WebService的页面(关与身份验证请见:在WebService中使用Session或Cookie---实现WebService身份验证(客户端是Flex) ),另外在用JQuery发送Ajax请求的时候页面传输数据时候还有用到Json数据(Flex好象有几个地方也用到了).
项目解决方案截
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2008-12-30 00:11:10</li>
				            <li>阅读(14503)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/21.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/28.aspx">在WebService中使用Session或Cookie(实现Flex客户端身份验证)</a></h2>
			            <!--<div class="date"><a href="">2008-06-02</a></div>-->
			            
			            <div class="summary">
			                 现在我们开发一个项目，业务逻辑层全部用WebService,客户端有Flex和Asp.Net,Flex和Asp.Net的所有业务逻辑数据库的访问全部调用WebService中的方法(好象Flex也不能直接对数据库进行访问,所以也只能用WebService),现在就出现问题了，就是WebService中的权限问题了，比如:我在WebService中有一个Login的方法,还有一个ChangePwd修改用户密码的方法，可之，如果我要调用ChangePwd方法前我一定要判断用户是否Login了,所以一般的情况就是在Login方法里面当用户成功登陆后就Sesssion用户ID或者是用Cookie来保存以唯一标识用户，然后我再在ChangePwd方法里面先判断访问的用户是否存在Session或是有Cookie标识,如果有的话我再允许修改修改他自己当前登陆的密码，但是这些当做为 WebService方法的提供的时候就出现了问题,我在访问用户成功Login后Session当前用户的ID之后,当用户再去调用 ChangePwd方法的时候Session却丢失了，原因是我并不是直接打开IE访问WebService页面,然后在点调用那一个 WebService方法，那样我能成功验证。但我现在要是在我的项目中添加WebService引用,引用成功后.net便会自动生成一个App_WebReferences文件夹来保存引用的WebService的WSDL等信息，我们在调用的时
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2008-06-02 11:10:10</li>
				            <li>阅读(15577)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/28.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/31.aspx">国王之死---悼念迈克尔.杰克逊</a></h2>
			            <!--<div class="date"><a href="">2009-06-28</a></div>-->
			            
			            <div class="summary">
			                2009年6月26日，The King Of Pop，流行音乐之王迈克尔.杰克逊因为心脏病突发逝世，终年50岁。此前，他正准备复出，在伦敦O2体育场举行五十场演唱。200万张门票在4个小时内销售告罄，这场演唱会的名字叫《This Is It》，就是这样了。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-06-28 21:10:59</li>
				            <li>阅读(9136)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/31.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/24.aspx">二次开发WinWebMail邮件系统接口 - 企业邮件服务器解决方案</a></h2>
			            <!--<div class="date"><a href="">2009-01-07</a></div>-->
			            
			            <div class="summary">
			                WinWebMail,是一个比较轻量级的邮件服务器系统,适用于中小型企业的邮件系统,功能也比较齐全,关于它的详细介绍可参见官网地址:http://www.winwebmail.com/.从网上去下载一个安装到机器上,我们公司服务器上安装的是WinWebMail 3.7.6.1 企业版,安装的时候它回自动生成网站文件目录,全部都是ASP的页面,在IIS里面创建一个虚拟目录指向该Web文件夹,按照他的一些说明配置好权限等,这样我们就在网页使用它的邮件服务了.
它的Web客户端比较简洁,不过该有的功能还是都有.第一次用admin进去添加一个域,再添加到一个用户进去,我们就拥有该域名的邮箱.注意,如果你这台机器并没有独立网络IP地址或者域名没有解析到你这里你也能添加域,比如我添加一个microsoft.com的域,再到里面添加一个用户jonllen,那我登陆jonllen@microsoft.com用户,我也能以它的用户名发送出邮件,呵呵,不过对方看到的应该是在垃圾邮件里面,因为现在一般邮件服务器都会判断邮件域名和发送的来源是不是同一个地方,不是同一个地方就认为是伪造的垃圾邮件,而且对方回复你也不能收到,因为microsoft.com不是解析到你那里,先来看一张WinWebMail登陆后的截图.

发送邮件就只能在Web页面里面操作是往往不够的.比如系统自动发
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-01-07 01:08:10</li>
				            <li>阅读(22829)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/24.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/23.aspx">asp项目 — 报价订购系统</a></h2>
			            <!--<div class="date"><a href="">2009-01-03</a></div>-->
			            
			            <div class="summary">
			                其实我以前在学校里面并没有学过asp的,以前在学校里面学的java的东西最多,其次是.net的课程,不过我一直对.net很感兴趣,好象不只是因为java比较难.net比较人性化些,就感觉它好易用.用.net也做过几个项目了,但是还没有用asp做过,对它还是有点想法.
好象听别人说,asp是asp.net的前身哦,全称为Active Server Page动态页面,服务器端解析也是用IIS,但是它不需要有Microsoft .NET Framework就能直接运行的,在这里我先列举asp和.net的一些不同之处.asp部署简单,没有进行预编译,上传网站即是源代码,这样就有一个安全隐患,网站源文件容易被盗,好象asp页面代码也能加密的,但是比较弱能轻易的就被破解到的.而asp.net网站的话可以把网站预编译,上传为dll文件,这样就安全多了.asp代码不是很严谨,变量可以不申明直接使用,属与弱变量类型.而.net的话是非常面向对象的,如类的继承、多态、重写等.asp写代码调试都比较麻烦,只有少量的智能提示输入,而.net有一个强大的IDE编程环境(VS),达到了很人性化的设置.
上这个asp项目的时候其实心里没底,因为这个项目是原来已经做好成型的,不知道以前别人做得怎么样的,也没有接触过,后来发现它确实是个烂摊子,数据库表结构设计得不合理,代码写得很混乱.没
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-01-03 00:28:10</li>
				            <li>阅读(11156)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/23.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/22.aspx">一个Windows后台服务(.Net的C#版) - 定时访问数据库循环发送手机短信</a></h2>
			            <!--<div class="date"><a href="">2009-01-05</a></div>-->
			            
			            <div class="summary">
			                所谓Windows后台服务,即后台自动运行的程序,一般随操作系统启动而启动,在我的电脑 服务后应用程序 服务里面能看到当前电脑的服务.一般而言,程序上用VC、C++写Windows服务,但是我对这些语言不是很熟,一般编程用C#较多,所以就用C#语言写了一个Windows服务.
其实需求是这样的,做那个报价系统的时候加入了发短信的功能,订单处理完即将发货的时候要发送短信都客户手机上,公司内部员工处理订单超时要自动发短信,群发产品促销信息到客户手机上等,还有定时发送短信的需求,所以最后面决定把发短信的模块独立出来,以后还有什么功能方便一起调用,而最终选择了采用Windows后台服务.
其实Windows服务并不好做到通用,它并不能在用户的界面显示一些什么信息等,它只是在后台默默的处理一些事情,起着辅助的作用.那如何实现发送段信通用调用的接口呢?它们之间的信息又是如何来交互呢?数据库!对,就是它存储数据信息的.而数据库都能很方便的访问操作.把发送短信的后台服务定时去访问一个数据库,而另外任何要发送短信的地方也访问数据库,并插入一条要发送的短信到表里面,稍后Windows后台服务访问该表将此短信发送出去.这可能是一个比较蠢的方法,但实现起来较简单的.
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-01-05 00:54:10</li>
				            <li>阅读(14707)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/22.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/db/20.aspx">mysql存储过程 在动态SQL内获取返回值</a></h2>
			            <!--<div class="date"><a href="">2009-06-28</a></div>-->
			            
			            <div class="summary">
			                很简单，不需要使用游标循环来读取，直接select * into @变量就OK了，还可以传递参数来执行(附MySql通用分页存储过程)。
#拼接查询总记录的SQL语句 
setv_sqlcounts=concat('selectcount(*)into@recordcountfrom',v_tables,v_where); 
set@sqlcounts:=v_sqlcounts; 
#预处理动态SQL 
preparestmtfrom@sqlcounts; 
#传递动态SQL内参数 
set@s1=categoryid; 
executestmtusing@s1; 
deallocatepreparestmt; 
#获取动态SQL语句返回值 
setrecordcount=@recordcount;#拼接查询总记录的SQL语句
set v_sqlcounts = concat('select count(*) into @recordcount from ',v_tables,v_where);
set @sqlcounts := v_sqlcounts;
#预处理动态SQL
prepare stmt from @sqlcounts;
#传递动态SQL内参数
set @s1= categoryid;
execute stmt using @s1;
deallocate prepare stmt;
#获取动态SQL语句返回值
set recordcount = @recordcount;
以上我上再做存储过程分页里用到动态SQL里将查询到的count记录条数通过变量@recordcount放到recordcount里面了。

			            </div>
			            <div class="tags">标签：数据库 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-06-28 14:59:41</li>
				            <li>阅读(17472)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/db/20.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/19.aspx">JavaScript无限级Select下拉列表联动</a></h2>
			            <!--<div class="date"><a href="">2009-06-28</a></div>-->
			            
			            <div class="summary">
			                使用数组，支持无限级别，一次性从服务器输出所有数据，最好的例子就是省市select联动，代码如下...
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-06-28 14:46:08</li>
				            <li>阅读(13548)</li>
				            <li><a class="comment" title="共3条评论" href="/jonllen/js/19.aspx#comment">评论(3)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/java/18.aspx">Java方法强制传递引用参数(做为返回值)，改变被传递参数值。</a></h2>
			            <!--<div class="date"><a href="">2009-06-28</a></div>-->
			            
			            <div class="summary">
			                 今天在Jsp页面内调用方法的时候碰到了一个问题，是一个服务器端分页的方法，本身是返回List集合的，但是还需要返回总记录数和总页面，没办法返回，想到Java内方法的传值传引用类型，在网上找了Java传递参数分为2种：值类型，Java里面也叫简单类型，这种参数类型的传递的是它的副本拷贝； 
引用类型，传递的是对象引用地址，如果在方法内改变该参数对象属性即是对原引用对象的改变；如果不想这样传递可传递 对象.clone() 即传递的是该对象的副本拷贝； 那么，如果我想传递简单参数类型，但是我又想在方法内能改变原参数的值那如果传递呢？比如说一个方法是返回List集合但是我还需要传递一个总记录条数和总页面的参数，在该方法内进行赋值。Java内传递值还是引用类型还有一条规定，所有数组参数都是引用传递，即传递的是原地址，一旦改变数组参数值原引用数组值也回相应的改变，这样便能在一个有返回值的方法里还返回总记录条数和页数。这个问题存在与jsp页面，就算你把int改为integer类型还不性，不知道在action里面是否有这个问题。
			            </div>
			            <div class="tags">标签：Java 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-06-28 14:28:06</li>
				            <li>阅读(16141)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/java/18.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/25.aspx">2009新变化，惠海→时代财富→广佛都市网</a></h2>
			            <!--<div class="date"><a href="">2009-03-28</a></div>-->
			            
			            <div class="summary">
			                 在精神委靡的状态，无聊回到的博客里，做个记号(于佛山出差加班时)。
 在今年，其实还是有瞒多的变化，年初，我离开了我在广州工作的近一年的公司—惠海IT连锁， 要离开的时候那段时间确实是有点舍不得，毕竟在那里工作了那么久，每天大家都相处在一起，一起工作，去蓝与白吃饭，这里我要特别感谢我的经理xkp(netfoxer),在惠海他很照顾我，我也再他那里学了不少东西，对每个人也非常的好。不过我离开到现在好象没太多的感觉了，我辞职掉工作不久马上就面试进入了时代财富公司，它就在科韵路那边，离我住的地方的比以前公司更近了，刚进公司感觉还不错，做程序有蛮多的高手，气愤很浓烈，相信我能学到更多的东西，我想我也能胜任这份工作。不过刚进公司好象就给过别人不好的印象，哎，好象是还会有点曲折。。。
 以上写于佛山出差期间，以下续于回广州后2009.4.6。
 时代财富给我印象不好的就是一进公司就加班，哎，那短日子可是苦日子啊，每天好像没完没了的加班，度日如年啊！在公司大概加了一个多月的班，我就派到佛山客户那边去工作，想想以为出差就不会想公司那样加班了，可是去那边仍然也是没昼夜的加班啊，总共就去了一个星期，就只有一天晚上没有加班，说起那天蛮
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-03-28 22:11:10</li>
				            <li>阅读(8429)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/25.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/27.aspx">给张总的一封信(新员工培训后感悟)</a></h2>
			            <!--<div class="date"><a href="">2009-06-28</a></div>-->
			            
			            <div class="summary">
			                张总，您好！我是彭金龙，来自湖南湘潭，在公司技术研发部。开会那天我是最后一个做自我介绍的，这里是我再次的对您自我介绍，相信您这时已经记住我的名字了吧。开会那天我感觉您应该是没有记住我的吧，因为您在说到技术望着我们这边的时候，你只有提起光明的名字，而没有说起同样做技术就座在他旁边的我。
听了张总那2个小时的演讲，感触颇深，感谢您为我们倾心的演讲，让我们受益匪浅。我觉得您不单只是给我们在做新员工培训，而是教会我们一些做人的道理。我们确实还太年轻，还需要学习更多的东西，还需要在这个社会锻炼，还有很多道理需要自己在摸索里来验证，张总在您给我们的讲课里，很形象的告知我们很多道理，可能对我以后的道路都帮助很大，就像是小萍折腾了半天的问题叫小龙来可能一句话就能搞定，像捷径一样会让我们少走很多冤枉路。我希望我是真的听进去了，然后做得比说的好。人生活在这世上最大的快乐就是没有遗憾，当老的时候能有一些美好快乐的回忆，能回想以前做过的一些有意义的事，那是多么快乐的事情。
作为一名程序员，整天就是对着一堆英文字母打交道，操作一些机器语言代码，我觉得本身做程序的人可能会点死板些吧，不太会说话。我不知我算是那种死
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-06-28 16:44:37</li>
				            <li>阅读(3372)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/27.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/java/17.aspx">java.lang.NoSuchMethodError错误</a></h2>
			            <!--<div class="date"><a href="">2009-06-28</a></div>-->
			            
			            <div class="summary">
			                一个错误异常java.lang.NoSuchMethodError，没有这样的方法错误，不过你可别被它的这个名字给忽悠了，因为我明明是有这个方法的，按ALT+S里还有这个方法的智能提示。我觉得这个是TOMCAT的本身的问题，按CTRL+S保存会即时的编译一些代码，但是有时候会出现一些小BUG，想这样的错误关掉TOMCAT重新部署项目后再启动就OK了.
			            </div>
			            <div class="tags">标签：Java 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-06-28 14:16:11</li>
				            <li>阅读(11542)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/java/17.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>

                
            </div>
            <script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'articleitem', maxWidth : document.getElementById('articleitem').offsetWidth });</script>
		</div>
		<div class="pagination" id="ctl00_cphContent_Pager1">

<script type='text/javascript'>function goToPage0(pid, urlformat){var url = "index__pid.aspx";if(urlformat)url=urlformat;document.location.replace(url.replace("_pid",pid).replace("_1.","."));}</script>
                            <!--共154条记录-->
                            <a href='javascript:goToPage0(1)' title='转到第1页'>首页</a>
                            <a href='javascript:goToPage0(7)' title='转到第7页'>上一页</a>
                            <a href='javascript:goToPage0(6)' title='转到第6页'>...</a><a href='javascript:goToPage0(7)' title='转到第7页'>7</a><font color='red'><strong>8</strong></font>
                            
                            <a disabled>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='8' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

	</div>
	
</div>
 
        </div>
	</div>
	<div id="ctl00_panRight" class="siderRight column column3">
	
<div id="mod29" class="mod recommend">
    <h4 class="head">博文推荐</h4>
    <div class="cont">
	    <ul>
                    

	    </ul>
    </div>
</div>
<div id="mod30" class="mod comment">
    <h4 class="head">最新评论</h4>
    <div class="cont">
	    <ul>
		    

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

	    </ul>
    </div>
</div>
 
<div id="mod31" class="mod recent">
    <h4 class="head">最近发表</h4>
    <div class="cont">
	    <ul>

                    
		    <li><a href="/jonllen/work/800.aspx">2015年度工作总结</a>(2015-12-31)</li>
                    
		    <li><a href="/jonllen/travel/801.aspx">靖港古镇游</a>(2015-11-29)</li>
                    
		    <li><a href="/jonllen/js/179.aspx">使用ECharts报表统计公司考勤加班，大家加班多吗？</a>(2015-06-05)</li>
                    
		    <li><a href="/jonllen/js/178.aspx">JavaScript实现SM2算法加解密</a>(2014-10-28)</li>
                    
		    <li><a href="/jonllen/breast/177.aspx">2014年国庆</a>(2014-10-04)</li>
                    
	    </ul>
    </div>
</div>
 
<div id="mod36" class="mod search">
	<h4 class="head">搜索</h4>
	<div class="cont">
		<form action="/search/" method="get">
	        <input type="text" name="key" class="text" value="" placeholder="输入搜索内容" />
	        <input type="submit" class="btn" value="搜索" />
	    </form>
	</div>
</div>
 
<div id="mod32" class="mod click">
    <h4 class="head">关注最多</h4>
    <div class="cont">
	    <ul>
                    
		    <li><a href="/jonllen/work/164.aspx">SM2非对称算法加解密</a>(47354)</li>
                    
		    <li><a href="/jonllen/work/162.aspx">国密算法SM2证书制作</a>(40614)</li>
                    
		    <li><a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a>(33064)</li>
                    
		    <li><a href="/jonllen/work/174.aspx">SM2国密算法证书解析</a>(28317)</li>
                    
		    <li><a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a>(27067)</li>
                    
	    </ul>
    </div>
</div>
 
</div>
</div>
 
<div class="auto" id="foot">
    <div class="wrapper">
	Powered By ：Jonllen  <a href="https://beian.miit.gov.cn" target="_blank">粤ICP备10049366号</a>
	</div>
</div>
 
<script type="text/javascript" src="/styles/index/scripts/Drag.js"></script>
<script type="text/javascript" src="/styles/index/scripts/Tooltip.js" ></script>
<div style="display:none"> 
    <script type="text/javascript" src="/styles/index/scripts/statistics.js"></script>
</div>

</body>
</html>