import 'package:flutter/material.dart';
import 'mall/mall-listview.dart';

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
        actions: <Widget>[   // 标题右边区域 此处可以设置一组按钮
          IconButton(
            icon: Icon(Icons.search),
            tooltip: '搜索',
            onPressed: () => debugPrint('搜索事件'),
          ),
        ],
        title: Text('AppBarTitle'),
        elevation: 5.0, // 阴影部分
      ),
        body: MallListView()
      ),
    );
  }
}
