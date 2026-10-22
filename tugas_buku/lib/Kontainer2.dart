import 'package:flutter/material.dart';

class kontainer2 extends StatelessWidget {
  const kontainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.606,
      height: MediaQuery.sizeOf(context). height * 0.24,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Jocey Karlan',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          ),
          Text(
            'Product Management',
            style: TextStyle(
                color: Colors.white,
                fontSize: 15
            ),
          )
        ],
      ),
    );
  }
}
