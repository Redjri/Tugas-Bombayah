import 'package:flutter/material.dart';
import 'package:tugas_buku/Kontainer2.dart';
import 'package:tugas_buku/Text1.dart';
import 'package:tugas_buku/kontainer1.dart';

class kolumm1 extends StatelessWidget {
  const kolumm1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            kontainer1(),
            kontainer2()
          ],
        ),
        text1()
      ],
    );
  }
}
