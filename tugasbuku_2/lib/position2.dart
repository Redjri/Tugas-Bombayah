import 'package:flutter/material.dart';
import 'package:tugasbuku_2/Text1.dart';

class positioned2 extends StatelessWidget {
  const positioned2({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 15,
      child: Container(
        width: 70,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red
        ),
        child: Text1(),
      ),
    );
  }
}
