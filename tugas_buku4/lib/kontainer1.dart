import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tugas_buku4/icon.dart';
import 'package:tugas_buku4/stak.dart';

class kontainer1 extends StatelessWidget {
  const kontainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.blue,
          width: 3,
        ),
      ),
      child: stak()
    );
  }
}
