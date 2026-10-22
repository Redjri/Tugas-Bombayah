import 'package:flutter/material.dart';

class kontainer1 extends StatelessWidget {
  const kontainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        border: Border.all(
          color: Colors.black,
          width: 3
        ),
        shape: BoxShape.circle
      ),
      child: Icon(
        Icons.chat,
        size: 100,
        color: Colors.white,
      )
    );
  }
}
