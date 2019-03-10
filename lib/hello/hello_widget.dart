
import 'package:flutter/material.dart';


class HelloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello Widget',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 45.0,
          fontWeight: FontWeight.bold,
          color: Colors.amberAccent,
        ),
        )
      );
  }
}