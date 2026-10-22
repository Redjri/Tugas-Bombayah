import 'package:flutter/material.dart';
import 'package:tugas_buku3/kontainer.dart';
import 'package:tugas_buku3/position1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            kontainer1(),
            positioned1()
          ],
        ),
      ),
    );
  }
}
