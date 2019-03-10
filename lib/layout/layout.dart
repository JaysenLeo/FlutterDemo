import 'package:flutter/material.dart';
import '../Icon/Icon.dart';

class LayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        CustomIcon(Icons.book, limitSize: 60.0, baseColor: Colors.black12),
        CustomIcon(Icons.book, limitSize: 60.0, baseColor: Colors.black12),
        CustomIcon(Icons.book, limitSize: 60.0, baseColor: Colors.black12)
      ],
    );
  }
}
