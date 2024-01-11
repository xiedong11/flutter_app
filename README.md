# flutter_app

# 工程编译工具版本说明
- flutter Channel stable, 3.16.5
- Dart SDK version: 3.2.3 (stable)
- Gradle 7.3


**专栏地址：** 
- csdn：[Flutter进阶专栏](https://blog.csdn.net/xieluoxixi/column/info/29778)
- 简书：[Flutter进阶专栏](https://www.jianshu.com/c/06cb6b5b177f)
- 掘金：[Flutter进阶专栏](https://juejin.im/user/5cb416cef265da03893286ea/posts)
- hexo：[Flutter进阶专栏](https://my-flutter.github.io/)



## 什么是Flutter
Flutter 是一个跨平台（Android 和 iOS）的移动开发框架，使用的是 Dart 语言。

Flutter 的目标是用来创建高性能、高稳定性、高帧率、低延迟的 Android 和 iOS 应用。并且开发出来的应用在不同的平台用起来跟原生应用具有一样的体验。不同的平台的原生体验应该得到保留，让该应用看起来同整个系统更加协调。不同平台的滚动操作、字体、图标 等特殊的特性 应该和该平台上的其他应用保持一致，让用户感觉就像操作原生应用一样。

## 为何选择使用 Flutter？
开发效率高，一套代码可以开发出 Android 、 iOS、Fuchsia平台应用
同样的功能只需要很少的代码，如果你只开发一个平台的应用，使用 时髦的、更具有表达性的开发语言，也可以让你用更少的代码来实现同样的功能。
开发原型和迭代更加方便
在应用运行的时候就可以修改代码并重新加载修改后的功能（hot reload）
直接修改崩溃的 bug，然后继续从崩溃的地方执行调试
创建优雅的、可定制的用户界面
Flutter采用 Materal Design 设计语言（规范），该规范定义了用户界面上的元素的用途、外观、展现形式以及形态变化的规范
提供了可定制的 UI 框架，不再受制于手机平台控件的支持。
完全从头设计的系统，不会有为了兼容考虑的历史包袱——比如 Java 虚拟机的慢速，又比如 Android 较慢的渲染速度。因此也可以把体积做的很小，塞到存储容量很小的设备中。
专栏介绍
 本专栏定位人群为初识Flutter，并且想熟练掌握Flutter的开发者，由于我业务范畴涉及到的只有android，所有后面的平台交互部分我会从android平台带大家进行实例操作，由浅入深的带大家一起学习并掌握Flutter这门新技术，并能快速上手到实际开发中去。


## 目录
#### 基础控件篇

[ Flutter入门进阶之旅（一）-初识Flutter ](https://blog.csdn.net/xieluoxixi/article/details/84068594)

[Flutter入门进阶之旅（二）Hello Flutter](https://blog.csdn.net/xieluoxixi/article/details/84102514)

[Flutter入门进阶之旅（三）Text Widgets](https://blog.csdn.net/xieluoxixi/article/details/84242706)

[Flutter入门进阶之旅（四）文本输入Widget TextField](https://blog.csdn.net/xieluoxixi/article/details/84317255)

[Flutter入门进阶之旅（五）Image Widget](https://blog.csdn.net/xieluoxixi/article/details/84750418)

[Flutter入门进阶之旅（六）Layout Widget](https://blog.csdn.net/xieluoxixi/article/details/85052636)

[Flutter入门进阶之旅（七）GestureDetector](https://blog.csdn.net/xieluoxixi/article/details/85236984)

[Flutter入门进阶之旅（八）Button Widget](https://blog.csdn.net/xieluoxixi/article/details/85265529)

[Flutter入门进阶之旅（九）StatelessWidget & StatefullWidget](https://blog.csdn.net/xieluoxixi/article/details/85851298)

[Flutter入门进阶之旅（十）Dialog&Toast](https://blog.csdn.net/xieluoxixi/article/details/86139313)

[Flutter入门进阶之旅（十一）Index&Chose](https://blog.csdn.net/xieluoxixi/article/details/86506437)

[Flutter入门进阶之旅（十二）Flutter 数据存储](https://blog.csdn.net/xieluoxixi/article/details/86655016)

[Flutter入门进阶之旅（十三）Flutter 路由](https://blog.csdn.net/xieluoxixi/article/details/87603518)

[Flutter入门进阶之旅（十四）ListView&GridView](https://blog.csdn.net/xieluoxixi/article/details/88235656)

[Flutter入门进阶之旅（十五）ListView下拉刷新&上拉加载更多](https://blog.csdn.net/xieluoxixi/article/details/89214068)

[Flutter入门进阶之旅（十六）Scaffold 脚手架](https://blog.csdn.net/xieluoxixi/article/details/90289367)

[Flutter入门进阶之旅（十七）Flutter dio网络请求](https://blog.csdn.net/xieluoxixi/article/details/96132854)

[Flutter入门进阶之旅（十八）Flutter项目打包成aar集成到原生Android项目](https://blog.csdn.net/xieluoxixi/article/details/102579088)

[Flutter入门进阶之旅（十九）Flutter与原生平台交互](https://blog.csdn.net/xieluoxixi/article/details/103048991)

[Flutter入门进阶之旅（二十）Flutter插件开发](https://blog.csdn.net/xieluoxixi/article/details/103902322)

[Flutter入门进阶之旅（二十一）Flutter 组件的生命周期](https://blog.csdn.net/xieluoxixi/article/details/111867940)


#### 进阶篇

[Flutter 验证码倒计时Widget封装](https://blog.csdn.net/xieluoxixi/article/details/104552521)

[Flutter 城市/通讯录列表字母索引联动效果实现](https://blog.csdn.net/xieluoxixi/article/details/105853662)

[Flutter入门进阶之旅 - Flutter课程表View](https://blog.csdn.net/xieluoxixi/article/details/116130085)

[Flutter入门进阶之旅（二十二）Flutter 自定义view](https://blog.csdn.net/xieluoxixi/article/details/119953009)


#### 效果预览图

|1. [基础控件篇](https://blog.csdn.net/xieluoxixi/category_9281251.html)|2. [城市/通讯录列表字母索引联动](https://blog.csdn.net/xieluoxixi/article/details/105853662)|3. [Flutter课程表View](https://blog.csdn.net/xieluoxixi/article/details/116130085)|
|----|---|---|
|<img width="265" src="https://github.com/xiedong11/flutter_app/blob/master/images/flutter_widget.gif"/>|<img width="265" src="https://github.com/xiedong11/flutter_app/blob/master/images/code_scroll.gif"/>|<img width="265" src="https://github.com/xiedong11/flutter_app/blob/master/images/syllabus.gif"/>|


##### 线下问题交流：
![QQ群](https://github.com/xiedong11/flutter_app/blob/master/images/qq_group.png)







