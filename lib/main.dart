import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 继承静态组件
class MyApp extends StatelessWidget {

  //重写 build 方法 返回Widget组件
  //传一个build 上下文
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Hello TextWidget',
      // home 给个脚手架组件
      home:  Scaffold(
        appBar: AppBar(
          title: Text('Hello AppBar Title'),
        ),
        body: Center(
          child: Container(
            child: new Text(
              'new 出来的 Text',
              style: TextStyle(
                  fontSize: 25.0
              ),
            ),

            /*  alignment
            *     Alignment.bottomCenter 底部居中对齐 等价于 Alignment(0.0, 1.0)
            *     Alignment.bottomRight 底部右对齐 等价于 Alignment(1.0, 1.0)
            *     Alignment.bottomLeft 底部左对齐 等价于 Alignment(-1.0, 1.0)
            *     Alignment.centerRight 居中右对齐 等价于 Alignment(1.0, 0.0)
            *     Alignment.center 居中对齐 等价于 Alignment(0.0, 0.0)
            *     Alignment.centerLeft 居中左对齐 等价于 Alignment(-1.0, 0.0)
            *     ...
            * */
            alignment: Alignment.topCenter, // 等价于 Alignment(0.0, -1.0)
            width: 500.0,
            height: 400.0,
            // 线性渐变属性
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Colors.lightBlue,
                  Colors.greenAccent,
                  Colors.amberAccent
                ])
            ),
            /*
            * 上下左右内边距有都相同EdgeInsets.all(20.0)
            * */
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
            margin: const EdgeInsets.all(10.0),
          ),
        ),
      ),
    );
  }

}
