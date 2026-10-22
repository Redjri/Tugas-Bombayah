import 'package:flutter/material.dart';

class positioned3 extends StatelessWidget {
  const positioned3({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 350,
      left: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sepatu Lari Ultrarun",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          Text(
            "RP. 350.000",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey
            ),
          ),
          Text(
            "RP 245.000",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
          )
        ],
      ),
    );
  }
}
