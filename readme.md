
本说明及相关脚本用于工作电脑初始化配置

操作系统：Win7x64pro

# 基本配置

## 系统配置
	关闭休眠  powercfg -h off
	关闭系统还原
	修改虚拟内存路径到D盘

## 自动配置脚本
	优化服务win7-optimize-srv-x200t.cmd
	修改系统临时文件夹位置.cmd
	win7-修改系统默认目录-PC-md725.cmd

# 应用程序

## 搜狗输入法

## teamviewer
	http://download.teamviewer.com/download/TeamViewer_Setup_zhcn.exe

## Everything 全盘检索工具

## 安装office

## WinMount 64位v3.4.1020官方版
http://www.pc6.com/SoftView/SoftView_17833.html#download


## chrome
	修改chrome用户目录路径.cmd


## firefox 用户目录修改

	C:\Users\Administrator\AppData\Roaming\Mozilla\Firefox\Profiles\l712mq4n.default\prefs.js

	该目录中包含配置文件和用户插件

	配置文件中可看到缓存配置
	user_pref("browser.cache.disk.parent_directory", "D:\\cache\\firefox\\cache");


## firefox 缓存路径修改

	修改Disk cache device:
	1、打开Firefox浏览器
	2、在地址栏输入 about:config
	3、查找 browser.cache.disk.parent_directory
	4、如果没有找到 browser.cache.disk.parent_directory ， 则通过右键新建这个“字符串”
	5、修改到你需要存放的位置，例如d:\firefoxtemp
	同样，修改Offline cache device：
	about:config 里新建字符串 browser.cache.offline.parent_directory ，值为你想要改到的目录，例如d:\firefoxtemp。
	6、重新启动 Firefox 程序
	7、在地址栏输入 about:cache ，可以发现Cache位 置已经成功修改



## 开箱即用科学上网
https://github.com/DIYgod/EasyGoAgent


## nodejs NPM路径

	Windows下的Nodejs npm路径是appdata，很不爽，想改回来，但是在cmd下执行以下命令也无效
	npm config set cache "D:\nodejs\node_cache"
	npm config set prefix "D:\nodejs\node_global"
	最后在nodejs的安装目录中找到node_modules\npm\.npmrc文件
	修改如下即可：
	prefix = D:\nodejs\node_global
	cache = D:\nodejs\node_global

## 安装cnpm

npm install -g cnpm --registry=https://registry.npm.taobao.org


## 安装Rollback Rx

# x200t驱动

## 压感屏驱动
http://dx.cr173.com/soft1/PenTablet_521-6.rar

## 其他驱动
主机名称：ThinkPad X200t 更改 主机编号： 7453 
http://think.lenovo.com.cn/support/driver/newdriversdownlist.aspx?yt=pt&categoryid=2966700&CODEName=7453&SearchType=1&wherePage=2&osid=233&SearchNodeCC=ThinkPad%20X200t

