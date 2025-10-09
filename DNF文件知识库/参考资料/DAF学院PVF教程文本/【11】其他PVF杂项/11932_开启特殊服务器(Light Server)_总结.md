# 11932_开启特殊服务器(Light Server)

## 📋 基本信息
- **文件名**: 11932_开启特殊服务器(Light Server).json
- **作者**: 未知
- **类型**: 其他PVF杂项修改
- **难度**: 中等

## 📝 功能描述
暂无描述

## 🔧 主要内容
<p>路径：etc/serverparameter.etc<br />
修改<code>[<span style="color:#e74c3c">light server no</span>]</code>词条下为自己的频道id。<br />
&darr;例如写为&darr;</p>

<pre>
<code>[light server no]
    3
[/light server no]
</code></pre>

<p>就是开启希洛克服务器为Light Server。</p>

<p><img alt="" src="http://book.tiansj.net//server/index.php?s=/api/attachment/visitFile&amp;sign=5b3e67242221cf5ca35b53b8df2d44d1" /><img alt="" height="586" src="/media/uploads/2023/10/08/image-20231008110355-1.png" width="809" /></p>

<p>上传PVF，重新Run。看到打印出 - Light Server Mode start! 即开启成功。</p>

<p><img alt="" src="http://book.tiansj.net//server/index.php?s=/api/attachment/visitFile&amp;sign=520828abb14482d9a03afa1ca8a20c7f" /><img alt="" height="117" src="/media/uploads/2023/10/08/image-20231008110407-2.png" width="612" /><br />
开启后会有回城免虚弱等其他特殊效果。</p>

<p>例如：<span style="color:#e74c3c"><code>etc/etcparameter.etc</code></span>下可单独设定此Light Server服务器怪物强度。</p>

<p><img alt="" src="http://book.tiansj.net//server/index.php?s=/api/attachment/visitFile&amp;sign=321b7c38ca043a720caefc2232a33a89" /><img alt="" height="822" src="/media/uploads/2023/10/08/image-20231008110415-3.png" width="802" /></p>

<pre>
<code>[light server no]
1 2 3 4 5 6 7 8
[/light server no]
</code></pre>

<p>这么写可DIY开多个对应id的服务器。</p>

<p>将属性1.0全部上调到5.0后，普通怪物移动速度，平A伤害等等全部明显提高了。碰俺一下就掉了一半的HP！</p>

<p><img alt="" height="901" src="/media/uploads/2023/10/08/image-20231008110425-4.png" width="1207" /></p>

<p><img alt="" height="199" src="/media/uploads/2023/10/08/image-20231008110451-5.png" width="374" /></p>

<p>来自<span style="color:#e74c3c"><code>[light server notice]</code></span>的设定时间提示。<br />
大概是NEOPLE的青少年模式</p>

<pre>
<code>[light server monster move speed] 1.0// 라이트 서버 몬스터 이동 속도 비율
[light server monster attack speed] 1.0// 라이트 서버 몬스터 공격 속도 비율
[light server monster hitrecovery] 1.0 // 라이트 서버 몬스터 히트 리커버리 비율
[light server monster hpmax] 1.0// 라이트 서버 몬스터 HP Max 비율
[light server monster physical attack] 1.0// 라이트 서버 몬스터 물리 공격력 비율
[light server monster physical defence] 1.0// 라이트 서버 몬스터 물리 방어력 비율
[light server monster magical attack] 1.0// 라이트 서버 몬스터 마법 공격력 비율
[light server monster magical defence] 1.0// 라이트 서버 몬스터 마법 방어력 비율
</code></pre>

<p>&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;-@❀小葵花蛐蛐❀</p>

## 🏷️ 标签
- 其他PVF杂项
- 游戏修改
- DNF
