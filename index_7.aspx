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
			            
			            <h2><a href="/jonllen/breast/55.aspx">换换位</a></h2>
			            <!--<div class="date"><a href="">2009-08-12</a></div>-->
			            
			            <div class="summary">
			                在赖了几天后，我终于还是搬回位置坐到了技术部，在火星外边绕了一大圈，回归到了地球的旁边。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-08-12 13:00:07</li>
				            <li>阅读(8500)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/55.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/54.aspx">PowerDesigner使用(修改版)—时代财富技术部培训资料</a></h2>
			            <!--<div class="date"><a href="">2009-08-10</a></div>-->
			            
			            <div class="summary">
			                PowerDesigner使用
PowerDesigner是一种著名的CASE建摸工具，最开始为数据库建模设计，即物理模型(Physical Data Model)用于生成数据库表结构，还有面向对象模型(Object Oriented Model)，用于建立UML模型的结构，可以直接生成CS代码，还有其他的模型等等，不同的模型之间可以相互的转化。我觉得它最实用方便的功能是使用物理模型直接设计生成数据库，给我们对数据库的生成升级维护带来极大的方便，下面主要来讲一下它的物理模型设计。
1.使用PowerDesigner物理模型生成数据库
PowerDesigner工程是采用Workspace工作空间，一个工作空间可包含多个模型项目，每个模型项目对应一个数据库结构。打开PowerDesigner在File里New选择Physical Data Model(物理模型)，可在DBMS选项里面选择数据库的类型，新建立模型后PowerDesigner自动创建一个工作空间(Workspace)放在里面，然后模型下面默认会创建一个名PhysicalDiagram_1的物理图表区，这个其实就是用来区分数据库内某一模块的单元区域，我一般是把数据库内有关系的表放在同一块里面，如会员模块就叫MemberDiagrm里面放会员及其相关的表，其他模块就另外新建一个另外放在一起。浮在IDE右上方的Palette就是PowerDesigner里一些
			            </div>
			            <div class="tags">标签：工作 PowerDesigner,时代财富
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-08-10 10:21:16</li>
				            <li>阅读(16012)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/54.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/49.aspx">为了我的家人健康祈祷...</a></h2>
			            <!--<div class="date"><a href="">2009-08-01</a></div>-->
			            
			            <div class="summary">
			                
今天，我弟弟发了一张半脸照过来，满脸红色的痘痘，有些驼都很大个里面还灌白浓肿得很大个，我看了真的很心疼，然后看了他昨天晚上4点多睡不着用手机发了一篇日志到QQ空间上面来：
相当无语！想哭却哭不出来！ 如果一个人经历了太多挫折，还能咬紧牙关走下去吗？有时候 真想离开这个是非之地，甚至这个世界；因为这个世界太不公平了，令人喘不过气来！ 老天在考验我的心里承受吗？现在每天都睡不着 难受  
我能体会到他现在的心情，他现在不止脸上的痘很疼，而且心里更痛。他说他下个星期也会去厂上班了，就算他自己不怕他现在脸上的东西，别人见了也会叫他回去治疗的，我内心真为他担心啊，真的想要哭出来，想他这几年也是身体不好，又是脚长疖子又开刀刮过脚趾，那种痛苦我知道真的很难受，十指连心啊。那我时候我妈动手术那种表情我现在仍然还记得，那是种揪心的痛，我希望不会再有了，希望我的家人还有我自己都要好好的保重，不要生病，祈祷我的家人和朋友都身体健康，平安是福！AM...

			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-08-01 17:18:18</li>
				            <li>阅读(8253)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/49.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/48.aspx">由劳动合同所产生的一些胡思乱想...</a></h2>
			            <!--<div class="date"><a href="">2009-07-31</a></div>-->
			            
			            <div class="summary">
			                今天我拿回了和广州时代财富科技公司签的劳动合同，其实是前天就签好了的，过了2天忘记带回来了，刚开始看到的合同日期是2009到2011年2年，后来跟人事部的人说她说错了公司统一应该都是签3年的，所有最终我也是签了3年的合同。我进公司是3月9日，算一下到今天不只不觉已经在时候财富待了4个月20天了。在这不到5个月里面，我认识学习到了很多东西，也认识了一些很好的同事，能让我不断的在进步。不过想一想我如果真的在这个公司待上了3年，那3年后真不知道会变成怎样？待人处事会不会成熟很多，技术能不能上到架构师的级别呢？3年后我的工资是不是还只是和劳动合同上签的一样高呢？我竟然在胡思乱想这些问题。。。
其实我现在有一个小小的目标，就是每天只要能学习积累进步一点点，那么每年就可以跨出一大步，如果以工资薪酬为标准来衡量的话，我希望我每一年能比上一年的月薪至少高出1K，要是我真的能这样跨越10年的话，那我的收入就很可观了。虽然说我从工作起后第一年实现了快超出以前工资1K的目标，但我知道能坚持到最终目标不容易，因为最开始都会比较容易，而到后面将会越来越难。以我现在的表现在公司待一年后工资想多加1K估计不可能，因为现在连我自己都感觉现在...
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-31 23:57:36</li>
				            <li>阅读(3625)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/48.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/47.aspx">loadScript和预载图片的JavaScript脚本</a></h2>
			            <!--<div class="date"><a href="">2009-07-24</a></div>-->
			            
			            <div class="summary">
			                动态加载自己JavaScript的Ajax请求脚本文件,使用Ajax发送请求...
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-24 10:51:32</li>
				            <li>阅读(11883)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/47.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/46.aspx">本世纪最罕见壮观的天象之一500年最长的"日全食"又怎样？</a></h2>
			            <!--<div class="date"><a href="">2009-07-22</a></div>-->
			            
			            <div class="summary">
			                
今天早上8点多，在公司上班的路上，就发现有很多路人在等看日食，广州是不到日全食的，只能看到0.778分的日偏食，刚出来的时候天色很蒙浓灰暗，本以为天公不做美看不到日食了，没想到就快到9点时候天空开晴，此时正好日偏食的时候，我也偷偷的瞄了几眼，发现太阳光真的好刺眼，但是又忍不好奇看，最后发现眼睛真的有很痛也~~
人们对这些罕见的自然壮观是非常报有好奇心的，也难怪，500年以来最长的日全食，我也有点后悔没能亲眼看完日全食整个过程，没能体会白天突然变成昼夜这一奇观，可能这辈子都没能有机会了。在网上看了一些视频直播，感慨万千，人类在浩瀚的宇宙面前是多么的渺小，无论你是高高在上的老板领导，还是办工室工作的白领，或是田地里工作的农民都会被大自然的这个壮观所吸引，大自然真的很伟大，世界真的很奇妙！这次在中国可观看到日全食达几个小时，这场美丽的泻后，大家各自回到自己的岗位，继续自己的工作。。。
地球还是要转，明天早上的太阳还是要从东方生起来。。。
于2009 7 22晚9 : 27

			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-22 21:12:08</li>
				            <li>阅读(8571)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/46.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/45.aspx">JavaScript兼容笔记</a></h2>
			            <!--<div class="date"><a href="">2009-07-18</a></div>-->
			            
			            <div class="summary">
			                从今天开始记录JavaScript使用的兼容问题一、推荐获取元素的HTML代码使用innerHTML，是W3C属性兼容所有浏览器，不要使用innerText和outerHTML，因为这不是标准的属性FF内不被支持的。解决代替outerHTML方法如下：1.使用document.createElement("DIV").appendChild(parentLink.cloneNode(true)).parentNode.innerHTML;创建一个元素新元素添加到子节点后获取innerHTML即元素的outerHTML值。2.网上还有另外一种方案是给dom元素prototype自定义添加一个outerHTML属性。三、IE跟其他标准的浏览器在DOM认识处理上有个非常重大的区别，IE在获取childNodes的时候会很'人性化'把TEXT_NODE空文本节点给忽略掉，而FF等浏览器不会，但有时候我们只需要获取nodeType=1的元素节点，如果为TEXT_NODE文本节点误当元素节点设置它一些属性时会出错，一般做到兼容的办法是获取childNodes时逐一判断nodeType!=3(jquery的做法)，但是就麻烦了一点，我一般用childNodes的时候我会用document.getElementById('id').getElementsByTagName('li'),但这是在预知所有的childNodes的nodeName前提下的，如果可以控制程序动态输出所有的childNodes的时候，可预先清除所有的空格换行，这样用childNodes获取的节点就没有TEXT_NODE空文本节点了，使用firstChild、lastChild、previousSibling、p
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-18 16:18:07</li>
				            <li>阅读(11181)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/45.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/reflection/44.aspx">项目里面至关重要的东西—细节</a></h2>
			            <!--<div class="date"><a href="">2009-07-17</a></div>-->
			            
			            <div class="summary">
			                今天不知道为什么，感觉好象很浮躁，早上一来Earth就重新发布我昨天修改完成的广佛都市网积分等级的功能，问题一大推，他先后叫我2次到他那边去问话，跟我说一些问题...

			            </div>
			            <div class="tags">标签：三日必省吾身 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-17 14:48:45</li>
				            <li>阅读(9811)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/reflection/44.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/43.aspx">网页版弹钢琴&&滚动的音符</a></h2>
			            <!--<div class="date"><a href="">2009-07-16</a></div>-->
			            
			            <div class="summary">
			                网页版弹钢琴&&JQuery滚动的音符...
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-16 21:26:16</li>
				            <li>阅读(18230)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/43.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/42.aspx"><<命中注定我爱你>>，我要当便利贴~~</a></h2>
			            <!--<div class="date"><a href="">2009-07-16</a></div>-->
			            
			            <div class="summary">
			                命中注定我爱你
这几天过得比较堕落，每天晚上都搞到二、三点才睡， 是因为我最近迷上一部电视连续剧命中注定我爱你，里面的女主角是一个很平凡的便利贴女孩陈欣怡，然后在游轮上巧遇到了她的白马王子纪存希，并且两人错误的发生了关系陈欣怡还怀孕了，最后嫁进了纪家，但是她并是从此就开始了幸福生活，反而是她恶梦的开始。。。
我知道这只是一部电视剧，在现实生活中不可能有这样的故事。在现实生活中真的有这样的便利贴女孩吗？如果有的话她的身边一定会有很多关心的人，将还会有很多的追求着；现实生活中真的会有这样的巧合吗？我觉得不太可能，这只是电视剧里面的编的一个美丽的故事。但无论如何，我还是被这个故事深深的感动过，昨天晚上我看到陈欣怡遭车祸流车，我看到哭了，掉了很多眼泪，可能我这个人是因为太感性容易被一个很小小故事所感动。因为我是多么的希望陈欣怡能和纪存希平安的生下他们的纪念品，最后他们一家人能穿上亲子装牵着纪念品的到公园里一起散步，过着最幸福的日子，因为我觉得这是这个故事最美好结局。但是事实总是与愿违，不然就没有这部电视剧后面的那些续集。
陈欣怡流产后回到薑母島，最后在Dylan的鼓励下去上海工作，经过2年的时间...
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-16 09:06:17</li>
				            <li>阅读(9359)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/42.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/41.aspx">摆脱JQuery—之自定义Dom筛选器</a></h2>
			            <!--<div class="date"><a href="">2009-07-12</a></div>-->
			            
			            <div class="summary">
			                之所以说要摆脱jquery，并不是说jquery不好用，本人也是佩服jquery五体投地，在没有用上jquery的时候我还没认识到javascript如此强大的功能，好在jquery的脚本是全部开源的，在它的里面我们能够学到很多的东西。不过我看过它的源码，可能是由于本人的js水平有限还有很多地方看不是很明白，不过在使用的过程可以得知jquery之所以如此强大得意于的它封装的dom对象类，并且几乎提供一个几乎"万能"的筛选器，而封装类又提供很多方便常见的方法操作dom对象，最重要的一点是jquery帮我兼容搞定所有的浏览器，使得我们不需要再考虑为ff、opera或safari做单独的判断，所以jquery倍受程序员的青睐。jquery还能进行很好扩展，提供了很多丰富的插件，也有提供一整套UI解决方案，还算好用啦。不过可能是由于本人比较叛逆的性格，出与没事干找抽，呵呵，就是不想再用jquery，也没有啦，下面我来说一下我为什么不再想用jquery的原因：

jquery脚本文件较庞大，1.2.6版没打包前有98kb，而打包后也占了31kb，但我们通常只用它其中的一个很小部分功能，感觉就有点浪费，所以没有必要把这么大的一个jquery脚本文件引用到页面；
本身的一些Bug，无论写什么东西都可能会有bug，虽然jquery是开
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-12 22:52:40</li>
				            <li>阅读(13324)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/41.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/pd.aspx">使用PowerDesigner的物理模型创建升级管理数据库</a></h2>
			            <!--<div class="date"><a href="">2009-07-11</a></div>-->
			            
			            <div class="summary">
			                PowerDesigner是一种著名的CASE建摸工具，最开始为数据库建模设计，即物理模型(Physical Data Model)用于生成数据库表结构，还有面向对象模型(Object Oriented Model)，用于建立UML模型的结构，可以直接生成CS代码，还有其他的模型等等，不同的模型之间可以相互的转化。我最中意的就是它的物理模型直接设计生成数据库，给我们对数据库的生成升级维护带来极大的方便，下面主要来讲一下它的物理模型设计。
1.使用PowerDesigner物理模型生成数据库
打开PowerDesigner在File里New选择Physical Data Model(物理模型)，可在DBMS选项里面选择数据库的类型，新建立模型后PowerDesigner自动创建一个工作空间(Workspace)放在里面，然后模型下面默认会创建一个名PhysicalDiagram_1的物理图表区，这个其实就是用来区分数据库内某一模块的单元区域，我一般是把数据库内有关系的表放在同一块里面，如会员模块就叫MemberDiagrm里面放会员及其相关的表，其他模块就另外新建一个另外放在一起。浮在IDE右上方的Palette就是PowerDesigner里一些常见操作的工具面板，点击选择在图表区新建一个FA_Member会员表，双击表在General里面修改表名描述，这里的Name最好是用中文，然后Code就是数据库的
			            </div>
			            <div class="tags">标签：Asp.Net PowerDesigner
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-11 22:52:51</li>
				            <li>阅读(24513)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/pd.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/remark/39.aspx">我的备忘录</a></h2>
			            <!--<div class="date"><a href="">2009-07-08</a></div>-->
			            
			            <div class="summary">
			                偶尔无聊瓣手指算一下，今年又过了一半，想想去年过年时候回家了一次，现在又有快半年没有见到我的家人了，'南漂'的日子还算是很平稳，只是望者窗外的大雨，只能撑起额头，越来越感觉寂寞，又唤起我对家里一切的思念，很想我的妈妈，我的亲人，家里一切熟悉的场景...
只有在出来到外地工作的人每天都不能见到自己的亲人才能体会到这种思念，以前读书学习一些古诗的时候老师经常会说表达了诗人对家人的思念等等，现在终于可以深深的体验到了。不过闭上眼睛，脑海里面还能想象得到妈妈亲切的叫着我，我在这边也一定会很乖很听话的。
今天记到备忘录里面，是为了让我记得下次回家多去看看爷爷、奶奶。家里面在我这个辈分里面我是最大的了，我还有一个弟弟，然后比我小的全部是表妹和堂妹，我叔叔只有一个女儿也只有6岁吧，所以我知道爷爷奶奶对我和弟弟兄弟两期望很高，尤其是我兄妹里面最大的一个了。我不能保证我将来一定能有所作为出人头地，但至少我可能做一个很孝顺的孙子，能与他们绕膝而谈，我渐渐的已到成家立业之年，而爷爷他们却是渐渐老去，已到垂暮之年，我想他们这个时候是最希望能儿孙满堂大家在一起，过着乐融融的日子，我想那便是他们最大的快乐了。所以我决定
			            </div>
			            <div class="tags">标签：备忘录 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-08 22:42:46</li>
				            <li>阅读(9034)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/remark/39.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a></h2>
			            <!--<div class="date"><a href="">2009-07-08</a></div>-->
			            
			            <div class="summary">
			                这个模式弹窗是我结合Jquery写的，因为有时候用Jquery的时候会造成和其他脚本有冲突。。。感觉Jquery的有些插件也不能都满足所有的需求，有些Bug不好怎么去解决；我写的也还有很多BUG，但是自己写的的也好去修复它，功能如下: 
同样支持窗体缩放大小时自动居中对齐(IE下必须很秀气的resize才能正确触发)；
支持同时打开对个窗体，并能响应Esc事件和点击遮掩层进行关闭弹窗；还有很对功能待完善，目前已经加入了拖拽和缩放大小的功能，默认是false不拖拽的,在init里面可以设置drag:true以让元素可拖拽,拖拽的代码是我之前在51js上看到别人贴的,很简洁所以就直接拿过来用了...
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-08 11:59:02</li>
				            <li>阅读(27067)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/js-popup.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/css/37.aspx">CSS兼容笔记</a></h2>
			            <!--<div class="date"><a href="">2009-07-06</a></div>-->
			            
			            <div class="summary">
			                从今天开始记录用的过的所有CSS样式兼容的问题，IE双倍浮动边界：在IE里面，一个外面的DIV容器里面套有多个有float属性的元素，并且指定了margin和pading属性，外面的DIV容器将产生双倍margin的内间距，把里面有float的元素指定display:inline属性解决这个问题。IE7内button按纽忽隐忽显：在IE7内,拉动滚动条导致button按钮内的文字忽隐忽显有时候就显示一半,或这个里面文字全部不可见,造成个问题的原因是改button样式继续了base样式里面的overflow:visible,重写overflow为hidden即可解决。注：不推荐使用button标签，曾测试过在支持html4的ie8里button支持新的属性type(button|submit)，以前我们使用button主要是用来关联一个js客户端的click函数事件，而在ie8里面button的默认type=submit的，所以你一点button不但不会触发click函数事件，而且还会刷新页面提交表单，非得一定设置type=button且onclick=return function (){//函数;return false;}才行。清除浮动：把浮动子元素的父容器元素加上overflow:auto;zoom:1;即可，对于标准浏览器而言，父容器的 overflow 设为除 visible 之外的值将闭合浮动元素，而对于IE系列浏览器而言，zoom:1触发了 layout 而会自动...
			            </div>
			            <div class="tags">标签：CSS 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-06 23:13:07</li>
				            <li>阅读(9904)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/css/37.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/36.aspx">我太鲁莽，还小不懂事？</a></h2>
			            <!--<div class="date"><a href="">2009-07-06</a></div>-->
			            
			            <div class="summary">
			                
今天真的是太鲁莽了，今天中午出去吃饭的时候竟然又忘记是要推开公司的门，而是不经思考的去拉门，发出碰的一声弹回来，把那个铝和金的门槛又挤大了一个洞，当场还有很多同事都看见了，那时候真我真的很囧很尴尬，我也恨自己真是个猪头没长脑子。其实这次已经是发生了的第二次了，之前我也拉公司的大门把那铝和金的门槛戳了一个小洞，那次正好还被张总给看到了，后来转正的和张总谈话的时候她说，我像她家的小孩子一样，不经思索的拉门，发出砰的一声。。。
还有今天晚上出去剪头发，不只虚荣心作祟还是总的，竟然只奔到马路门口那个理发店里面去剪头发，那个理发店里面剪头发是最贵的，里面的店子洗吹剪都只要10元，而跑到那里去看最低要25元，犹豫了一下最后还是报着就多了那十几块钱但相信服务会更好的心态进去了，这倒算了。不过我到里面去剪头发最后买单是104元，快无语了吧，这是我性格的缺点，有点优柔寡断，没主见，被别人说点好话就被轻易的给说服了。整个事情是这样的：进理发店里面一个说的株洲的湖南老乡给剪发，本来打算剪一个25元的头发(一跟里面的10元相比我还是很心疼的)，但是他剪完说我这个发型不太好，问我要改变下不？我本来是推辞的，后面问了他推荐
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-06 22:28:29</li>
				            <li>阅读(3158)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/36.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/35.aspx">我的工作记录</a></h2>
			            <!--<div class="date"><a href="">2009-07-06</a></div>-->
			            
			            <div class="summary">
			                我的工作记录
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-06 16:57:58</li>
				            <li>阅读(10040)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/35.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/photo.aspx">摆脱JQuery—之自定义图片缩略图列表滚动功能。</a></h2>
			            <!--<div class="date"><a href="">2009-07-04</a></div>-->
			            
			            <div class="summary">
			                JavaScript图片缩略图列表滚动功能。
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-04 20:01:45</li>
				            <li>阅读(13872)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/photo.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/33.aspx">js拖拽代码</a></h2>
			            <!--<div class="date"><a href="">2009-07-04</a></div>-->
			            
			            <div class="summary">
			                从51js论坛上路过时，看到别人贴的一段拖拽的JS代码，很简短就几行，除开在IE6内还有点小BUG外，在IE7、FF内均运行良好，固运用过来瞧瞧~~~
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-04 12:53:11</li>
				            <li>阅读(10315)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/33.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/32.aspx">不间断向左滚动代码</a></h2>
			            <!--<div class="date"><a href="">2009-07-01</a></div>-->
			            
			            <div class="summary">
			                不间断向左滚动代码...
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-01 00:39:12</li>
				            <li>阅读(11406)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/32.aspx#comment">评论(0)</a></li>
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
                            <a href='javascript:goToPage0(6)' title='转到第6页'>上一页</a>
                            <a href='javascript:goToPage0(6)' title='转到第6页'>...</a><font color='red'><strong>7</strong></font><a href='javascript:goToPage0(8)' title='转到第8页'>8</a>
                            <a href='javascript:goToPage0(8)' title='转到第8页'>下一页</a>
                            <a href='javascript:goToPage0(8)' title='转到第8页'>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='7' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

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