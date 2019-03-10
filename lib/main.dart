import 'package:flutter/material.dart';
import './bottom_nav_bar/bottom_nav_bar.dart';

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
       backgroundColor: Colors.blue[300],
        /* 
        底部导航栏 
        */
        bottomNavigationBar: BottomNavBar()
      ),
    );
  }
}
