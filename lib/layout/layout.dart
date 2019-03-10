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
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ///创建固定大小的框。[width]和[height] 参数可以为空，
        ///保证框的大小不应限制在相应的维度中。
        SizedBox(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: CustomIcon(Icons.book, limitSize: 60.0, baseColor: Colors.black12),
          ),
        ),
        /// 作为间隔
        SizedBox(
          height: 30.0,
        ),
        SizedBox(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: CustomIcon(Icons.book, limitSize: 60.0, baseColor: Colors.black12),
          ),
        )
//        CustomIcon(Icons.book, limitSize: 60.0, baseColor: Colors.black12),
//        CustomIcon(Icons.book, limitSize: 60.0, baseColor: Colors.black12)
      ],
    );
  }
}
