import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        leading: IconButton( // 标题左边区域
          icon: Icon(Icons.menu),
          tooltip: '导航',
          onPressed: () => debugPrint('导航事件'),
        ),
        actions: <Widget>[   // 标题右边区域 此处可以设置一组按钮
          IconButton(
            icon: Icon(Icons.search),
            tooltip: '搜索',
            onPressed: () => debugPrint('搜索事件'),
          ),
           IconButton(
             icon: Icon(Icons.more_horiz),
             tooltip: '其他',
             onPressed: () => debugPrint('其他事件'),
           )
        ],
        title: Text('AppBarTitle'),
        elevation: 5.0, // 阴影部分
      ),
      body: null,
    );
  }
}