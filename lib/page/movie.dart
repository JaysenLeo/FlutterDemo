import 'package:flutter/material.dart';
import '../mode/fake_post.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          /// SliverSafeArea 防止类似水滴屏额头遮挡 内容
          /// 即让内容显示在安全区域
          SliverSafeArea(sliver: SliverPadding(
              padding: EdgeInsets.all(10.0), /// 网格视图的内边距
              sliver: SliverListMovie(),
          ))
        ],
      ),
    );
  }
}

class SliverGridMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 0.7, ///控制试图显示比列
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: Image.network(
              movieInfo[index].posterUrl,
              fit: BoxFit.cover,
            ),

          );
        },
          childCount: movieInfo.length
      ),
    );
  }
}

class SliverListMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverList(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Material(
                borderRadius: BorderRadius.circular(10.0),
                elevation: 5.0,
                shadowColor: Colors.grey.withOpacity(0.5),
                /// 添加文字
                child: Stack(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 16/9,
                      child: Image.network(
                        movieInfo[index].posterUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 10.0,
                      child: Column(
                        /// 文字对齐
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            movieInfo[index].address,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            movieInfo[index].director,
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white
                            ),
                          )
                        ],

                      ),

                    )
                  ]
                )
/// 设置比例
//                child: AspectRatio(
//                  aspectRatio: 16/9,
//                  child: Image.network(
//                    movieInfo[index].posterUrl,
//                    fit: BoxFit.cover,
//                  ),
//                )
//                child: Container(
//                  child: Image.network(
//                    movieInfo[index].posterUrl,
//                    fit: BoxFit.cover,
//                  ),
//                )
              )
            );
          },
          childCount: movieInfo.length,
        )
    );
  }
}