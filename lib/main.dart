import 'package:flutter/material.dart';

void main() =>  runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('顶部工具栏标题'),
            elevation: 10.0, // 设置顶部阴影大小
          ),// 添加顶部工具栏
          body: HelloWidget()
      ),
      theme: ThemeData(
          primarySwatch: Colors.pink
      ),
    );
  }
}

class HelloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          'Hello Widget',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45.0,
            fontWeight: FontWeight.bold,
            color: Colors.amberAccent,
          ),
        )
    );
  }
}