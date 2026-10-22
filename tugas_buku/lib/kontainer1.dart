import 'package:flutter/material.dart';

class kontainer1 extends StatelessWidget {
  const kontainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.31,
      height: MediaQuery.sizeOf(context).height * 0.24,
      color: Colors.orange,
      alignment: Alignment.center,
      child: Container(
        width: MediaQuery.sizeOf(context). width * 0.2,
        height: MediaQuery.sizeOf(context). width * 0.2,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyiE6KiKpvt3THZpK9DiyvHfbu72_jOQ4XM_SMHVEKBA&s=10'),
          fit: BoxFit.fill)
        ),
      ),
    );
  }
}
