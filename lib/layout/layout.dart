import 'package:flutter/material.dart';

class LayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        IconEmblem(Icons.pool, limitSize: 60.0,)
      ],
    );
  }
}

class IconEmblem extends StatelessWidget {
  final IconData icon;
  final double limitSize;

  IconEmblem(this.icon ,{
    this.limitSize = 30
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: limitSize, color: Colors.white,),
      width: limitSize + 50,
      height: limitSize + 50,
      color: Color.fromRGBO(5, 60, 255, 0.6),
    );
  }
}
