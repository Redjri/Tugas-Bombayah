import 'package:flutter/material.dart';

class kontainer2 extends StatelessWidget {
  const kontainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 200, top: 130),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
      ),
      child: Icon(
        Icons.play_arrow,
        size: 80,
        color: Colors.blue,
      ),
    );
  }
}
