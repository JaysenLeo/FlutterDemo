import 'package:flutter/material.dart';


class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavBar();
  }
}

class _BottomNavBar extends State<BottomNavBar> {

    int _currentIndex = 1;

  /*
   * params:  
   *        index 表示索引值的参数
   * 
  */
  void _onTapHandle (int index) => {
    setState(() {
      _currentIndex = index;
    })
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
          /*
            currentIndex 标志底部导航栏底部激活状态 0 表示第一个 1 表示第二个
          */
          currentIndex: _currentIndex,
          /*
            onTap 控制底部导航栏底部激活状态的变化
           */
          onTap: _onTapHandle,
          /* *
           * BottomNavigationBarItem 超过三个时 将 type 置为 BottomNavigationBarType.fixed
           * */
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.blue,// 激活状态下的颜色
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              title: Text('社区'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('关注'),
            ),
          ],

        );
  }
}