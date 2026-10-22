import 'package:flutter/material.dart';
import 'package:kejuruan/testing.dart';
import 'package:kejuruan/arbian.dart';
import 'package:kejuruan/latihan_stack.dart';
import 'package:kejuruan/menuUtama.dart';
import 'package:kejuruan/testing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: tesaja()
    );
  }
}
