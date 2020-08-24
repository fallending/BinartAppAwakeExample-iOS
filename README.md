# AppAwakeExample-iOS

App 唤起

## 如果要使SceneDelegate失效，可以临时删除B工程下的plist中对应设置项

Application Scene Manifest

## Scheme

#### url scheme到底是什么？

        url scheme是APP可以自己注册的，即在项目中的info.plist里添加URL types，点击展开，右键选择Add Row，添加URL Schemes
        用大白话说它其实就是一个标识，其它APP可以通过它直接互相调用并可以传递一些参数

####  如何检测url scheme的准确性？

        以淘宝为例-》如果该url scheme是正确的，则你在Safari里输入taobao://，就可以直接打开你的淘宝app，如果你没有装淘宝，应该显示的是淘宝下载界面且点击会跳到AppStore的淘宝下载界面，反之则证明url scheme有效是错误的

####  URL Schemes是不是唯一的？

        并不是唯一的，也就是说，多个应用之间设置的URL Schemes是可以相同的。那么问题来了，假如两个应用的URL Schemes相同的话，使用openURL:方法会打开哪个应用呢？
        结论：如果两个应用有URL Schemes是相同的，后安装的应用的URL Schemes会把早安装的应用的URL Schems覆盖掉