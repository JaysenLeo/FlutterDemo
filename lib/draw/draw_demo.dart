import 'package:flutter/material.dart';


class UserDraw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
          child: ListView(
            padding: EdgeInsets.all(10.0),
            children: <Widget> [
              UserAccountsDrawerHeader(
                accountName: Text('Lee', style:TextStyle(
                    fontWeight: FontWeight.bold
                  )
                ),
                accountEmail: Text('28282828@163.com'),
                currentAccountPicture: CircleAvatar( // 头像
                  backgroundImage: NetworkImage('https://avatar.csdn.net/1/8/2/3_changerjjlee.jpg'),
                ), 
                decoration: BoxDecoration( // 背景画面
                  color: Colors.blue[400],
                  image: DecorationImage(
                    image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552731870&di=68cf98e6d93bb718766e133f71d5033f&imgtype=jpg&er=1&src=http%3A%2F%2Fimg8.3lian.com%2Fmb%2F2014%2F13%2F34.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.blue[400].withOpacity(0.6), // 背景
                      BlendMode.hardLight // 图片与背景的混合效果
                    )
                  )
                ),
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right),
                /*
                 * 标题右边显示 trailing
                 * 标题左边显示 leading
                 * */
                trailing: Icon(Icons.settings, color: Colors.black38, size: 25.0,), 
                onTap: ()=> {
                  Navigator.pop(context), // 关闭抽屉
                  debugPrint('Setting 事件')
                  },
              ),
              ListTile(
                title: Text('Download', textAlign: TextAlign.right),
                trailing: Icon(Icons.file_download, color: Colors.black38, size: 25.0,), 
                onTap: ()=> {
                  Navigator.pop(context),
                  debugPrint('Download 事件')
                  }
              )
            ],
          ),
        );
  }
}
