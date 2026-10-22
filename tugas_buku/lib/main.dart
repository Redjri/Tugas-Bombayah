import 'package:flutter/material.dart';
import 'package:tugas_buku/kolum1.dart';

import 'kontainer1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.grey,
          child: Container(
            color: Colors.red,
            margin: EdgeInsets.all(20),
            child: kolumm1(),
          ),
        )
      ),
    );
  }
}
