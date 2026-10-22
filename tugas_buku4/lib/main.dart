import 'package:flutter/material.dart';
import 'package:tugas_buku4/kontainer1.dart';
import 'package:tugas_buku4/kontainer2.dart';
import 'package:tugas_buku4/position.dart';

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
            kontainer2(),
            positioned1()
          ],
        ),
      ),
    );
  }
}
