import 'package:flutter/material.dart';

class positioned1 extends StatelessWidget {
  const positioned1({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 270,
      left: 390,
      child: Container(
        width: 80,
        height: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(2)
        ),
        child: Text(
          "12:45",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        ),
      ),
    );
  }
}
