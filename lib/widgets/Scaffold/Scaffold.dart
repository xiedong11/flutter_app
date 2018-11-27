//widgets.Scaffold
//从前面的文章中我们知道，Scaffold的中文意思是脚手架，顾名思义就是帮助我们快速构建APP，那么我们还是来看下Scaffold能把我们做哪些把。
//
//Scaffold构造方法
//
//const widgets.Scaffold({
//Key key,
//this.appBar,//标题栏
//this.body,//内容
//this.floatingActionButton,//悬浮按钮
//this.persistentFooterButtons,底部持久化现实按钮
//this.drawer,//侧滑菜单左
//this.endDrawer,//侧滑菜单右
//this.bottomNavigationBar,//底部导航
//this.backgroundColor,//背景颜色
//this.resizeToAvoidBottomPadding: true,//自动适应底部padding
//this.primary: true,试用使用primary主色
//})
//从构造方法我们可以看到，Scaffold可以帮助我们事先类似于Android中toolbar、悬浮按钮、汉堡菜单、底部导航效果
//接下来我们来分别看看每一个参数的用法。