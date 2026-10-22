import 'package:flutter/material.dart';

class positioned1 extends StatelessWidget {
  const positioned1({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
    top: 20,
    left: 20,
    right: 20,
    child: Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
        image: DecorationImage(image: NetworkImage('https://asset.kompas.com/crops/rvikSCXzMWQtG7uvjbUjf3P9-r0=/0x0:1200x800/1200x800/data/photo/2019/11/27/5dde0c057278b.jpg'),
        fit: BoxFit.fill
        )
      ),
    ),  
    );
  }
}
