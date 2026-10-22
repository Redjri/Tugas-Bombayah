import 'package:flutter/material.dart';

class positioned1 extends StatelessWidget {
  const positioned1({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 210,
      top: 10,
      child: Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.white,
            width: 5
          ),
          shape: BoxShape.circle
        ),
        child: Text(
          '9+',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
