import 'package:flutter/material.dart';
import '../mode/fake_post.dart';

// 独立 _listItemBuilder
class MallListView extends StatelessWidget {

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
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,//构建列表视图的项目
        ); // 创建列表视图;
  }
}