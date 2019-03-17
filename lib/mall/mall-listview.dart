import 'package:flutter/material.dart';
import '../mode/fake_post.dart';

// 独立 _listItemBuilder
class MallListBuilderView extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context, int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0), // 图片下面预留的高度
          Text(
            posts[index].title,
            style:Theme.of(context).textTheme.title   
          ),
          Text(
            posts[index].author,
            style:Theme.of(context).textTheme.subhead   
          ),
        ],
      ), // 从上到下排列的容器
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
//          reverse: false,
//          scrollDirection: Axis.vertical,
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,//构建列表视图的项目
        ); // 创建列表视图;
  }
}


class MallListBuilderSeparatView extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context, int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0), // 图片下面预留的高度
          Text(
              posts[index].title,
              style:Theme.of(context).textTheme.title
          ),
          Text(
              posts[index].author,
              style:Theme.of(context).textTheme.subhead
          ),
        ],
      ), // 从上到下排列的容器
    );
  }

  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1=Divider(color: Colors.blue,);
    Widget divider2=Divider(color: Colors.green);
    return ListView.separated(
      itemCount: 3,
      //列表项构造器
      itemBuilder: _listItemBuilder,
      //分割器构造器
      separatorBuilder: (BuildContext context, int index) {
        return index%2==0?divider1:divider2;
      },
    );
  }
}