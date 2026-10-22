import 'package:flutter/material.dart';

class kontainer extends StatelessWidget {
  const kontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 5,
        ),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
