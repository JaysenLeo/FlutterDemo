import 'package:flutter/material.dart';
import '../Icon/Icon.dart';

class LayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
      在 Row 里面 主轴是横着最中间那条线
      在 Column 里面 主轴是竖着最中间那条线
    * */
    return Column(
      /*
        交叉轴 即主轴的垂直平分线
        crossAxisAlignment
          CrossAxisAlignment.start 将子对象的起始边与横轴的起始边对齐。
          CrossAxisAlignment.stretch 交叉轴方向拉伸
          CrossAxisAlignment.center 放置子对象，使其中心与横轴的中心对齐
       */
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        CustomIcon(Icons.book, limitSize: 60.0, baseColor: Colors.black12),
        CustomIcon(Icons.book, limitSize: 60.0, baseColor: Colors.black12),
        CustomIcon(Icons.book, limitSize: 60.0, baseColor: Colors.black12)
      ],
    );
  }
}
