import 'package:flutter/material.dart';
import 'draw/draw_demo.dart';
import './bottom_nav_bar/bottom_nav_bar.dart';
import 'mall/mall-listview.dart';
import 'layout/layout.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue, // 应用主题颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),// 点击后背景高亮的颜色
        splashColor: Colors.white54 // 水波纹yanse
      ),
    );
  }
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      // backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
        /* *
          去掉 leading 莫认将leading 绑定 Draw 的开关
         */
        // leading: IconButton( // 标题左边区域
        //   icon: Icon(Icons.menu),
        //   tooltip: '导航',
        //   onPressed: () => debugPrint('导航事件')  
        // ),
        actions: <Widget>[   // 标题右边区域 此处可以设置一组按钮
          IconButton( 
            icon: Icon(Icons.search),
            tooltip: '搜索',
            onPressed: () => debugPrint('搜索事件'),
          ),
        ],
        title: Text('AppBarTitle'),
        elevation: 5.0, // 阴影部分
        bottom: TabBar(
          unselectedLabelColor: Colors.white70,// 定义未被选择的 Tab 的样式的颜色
          indicatorColor: Colors.black38,      // 定义选中的Tab标签下划线颜色
          indicatorWeight: 3.0, // 定义选中的Tab标签下划线粗细
          indicatorSize: TabBarIndicatorSize.label, // 定义选中的Tab标签下划线宽度 此处与标签icon宽度与之
          tabs: <Widget>[
            Tab(icon: Icon(Icons.shop)),
            Tab(icon: Icon(Icons.book)),
            Tab(icon: Icon(Icons.music_video))
          ],
        ),
      ),
        body: TabBarView( 
          children: <Widget>[
            MallListView(),
            LayOut(),
            Icon(Icons.music_video, size: 130.0, color: Colors.black12,),
          ],
        ),
        /* *
         * drawer // 右边划出抽屉
         * endDrawer: , // 左边划出抽屉
         * 
         * */
        drawer: UserDraw(),
        /* 
        底部导航栏 
        */
        bottomNavigationBar: BottomNavBar()
      ),
    );
  }
}
