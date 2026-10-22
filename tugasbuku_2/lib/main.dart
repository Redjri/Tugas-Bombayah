import 'package:flutter/material.dart';
import 'package:tugasbuku_2/Kontainer.dart';
import 'package:tugasbuku_2/position1.dart';
import 'package:tugasbuku_2/position2.dart';
import 'package:tugasbuku_2/position3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            kontainer(),
            positioned1(),
            positioned2(),
            positioned3()
          ],
        ),
      ),
    );
  }
}
