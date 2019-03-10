import 'package:flutter/material.dart';

class BookIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        CustomIcon(Icons.book, limitSize: 60.0, baseColor: Colors.black12)
      ],
    );
  }
}


class CustomIcon extends StatelessWidget {
  final IconData icon;
  final double limitSize;
  final Color baseColor;

  CustomIcon(this.icon ,{
    this.limitSize = 100,
    this.baseColor = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: limitSize, color: Colors.white,),
      width: limitSize + 30,
      height: limitSize + 30,
      color: baseColor,
    );
  }
}