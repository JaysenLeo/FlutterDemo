import 'package:flutter/material.dart';
import 'Icon/Icon.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookIcon(),
      theme: ThemeData(
        primarySwatch: Colors.blue, // 应用主题颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),// 点击后背景高亮的颜色
        splashColor: Colors.white54 // 水波纹yanse
      ),
    );
  }
}

